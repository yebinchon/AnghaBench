
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dummy; } ;
struct ims_pcu {int cmd_mutex; int ofn_reg_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int ims_pcu_read_ofn_config (struct ims_pcu*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct ims_pcu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t ims_pcu_ofn_reg_data_show(struct device *dev,
      struct device_attribute *dattr,
      char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct ims_pcu *pcu = usb_get_intfdata(intf);
 int error;
 u8 data;

 mutex_lock(&pcu->cmd_mutex);
 error = ims_pcu_read_ofn_config(pcu, pcu->ofn_reg_addr, &data);
 mutex_unlock(&pcu->cmd_mutex);

 if (error)
  return error;

 return scnprintf(buf, PAGE_SIZE, "%x\n", data);
}
