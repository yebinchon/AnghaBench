
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct gb_interface {int quirks; int mutex; int mode_switch_completion; int dev; int mode_switch; } ;


 int GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH ;
 int GB_SVC_INTF_MAILBOX_GREYBUS ;
 int complete (int *) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 int gb_interface_deactivate (struct gb_interface*) ;
 int gb_interface_disable (struct gb_interface*) ;
 int gb_interface_legacy_mode_switch (struct gb_interface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gb_interface_mailbox_event(struct gb_interface *intf, u16 result,
    u32 mailbox)
{
 mutex_lock(&intf->mutex);

 if (result) {
  dev_warn(&intf->dev,
    "mailbox event with UniPro error: 0x%04x\n",
    result);
  goto err_disable;
 }

 if (mailbox != GB_SVC_INTF_MAILBOX_GREYBUS) {
  dev_warn(&intf->dev,
    "mailbox event with unexpected value: 0x%08x\n",
    mailbox);
  goto err_disable;
 }

 if (intf->quirks & GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH) {
  gb_interface_legacy_mode_switch(intf);
  goto out_unlock;
 }

 if (!intf->mode_switch) {
  dev_warn(&intf->dev, "unexpected mailbox event: 0x%08x\n",
    mailbox);
  goto err_disable;
 }

 dev_info(&intf->dev, "mode switch detected\n");

 complete(&intf->mode_switch_completion);

out_unlock:
 mutex_unlock(&intf->mutex);

 return;

err_disable:
 gb_interface_disable(intf);
 gb_interface_deactivate(intf);
 mutex_unlock(&intf->mutex);
}
