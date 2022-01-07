
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct gb_interface {int quirks; int interface_id; int dev; struct gb_host_device* hd; } ;
struct gb_host_device {int svc; } ;


 int DME_SELECTOR_INDEX_NULL ;
 int DME_TOSHIBA_GMP_INIT_STATUS ;
 int DME_T_TST_SRC_INCREMENT ;
 int ENODEV ;



 unsigned long GB_INTERFACE_QUIRK_FORCED_DISABLE ;
 unsigned long GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH ;
 unsigned long GB_INTERFACE_QUIRK_NO_BUNDLE_ACTIVATE ;
 unsigned long GB_INTERFACE_QUIRK_NO_CPORT_FEATURES ;
 int GB_INTERFACE_QUIRK_NO_INIT_STATUS ;
 unsigned long GB_INTERFACE_QUIRK_NO_PM ;
 int dev_err (int *,char*) ;
 int gb_svc_dme_peer_get (int ,int ,int ,int ,int*) ;
 int gb_svc_dme_peer_set (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int gb_interface_read_and_clear_init_status(struct gb_interface *intf)
{
 struct gb_host_device *hd = intf->hd;
 unsigned long bootrom_quirks;
 unsigned long s2l_quirks;
 int ret;
 u32 value;
 u16 attr;
 u8 init_status;






 if (intf->quirks & GB_INTERFACE_QUIRK_NO_INIT_STATUS)
  attr = DME_T_TST_SRC_INCREMENT;
 else
  attr = DME_TOSHIBA_GMP_INIT_STATUS;

 ret = gb_svc_dme_peer_get(hd->svc, intf->interface_id, attr,
      DME_SELECTOR_INDEX_NULL, &value);
 if (ret)
  return ret;





 if (!value) {
  dev_err(&intf->dev, "invalid init status\n");
  return -ENODEV;
 }
 if (intf->quirks & GB_INTERFACE_QUIRK_NO_INIT_STATUS)
  init_status = value & 0xff;
 else
  init_status = value >> 24;





 bootrom_quirks = GB_INTERFACE_QUIRK_NO_CPORT_FEATURES |
    GB_INTERFACE_QUIRK_FORCED_DISABLE |
    GB_INTERFACE_QUIRK_LEGACY_MODE_SWITCH |
    GB_INTERFACE_QUIRK_NO_BUNDLE_ACTIVATE;

 s2l_quirks = GB_INTERFACE_QUIRK_NO_PM;

 switch (init_status) {
 case 129:
 case 130:
  intf->quirks |= bootrom_quirks;
  break;
 case 128:

  intf->quirks &= ~bootrom_quirks;
  intf->quirks |= s2l_quirks;
  break;
 default:
  intf->quirks &= ~bootrom_quirks;
  intf->quirks &= ~s2l_quirks;
 }


 return gb_svc_dme_peer_set(hd->svc, intf->interface_id, attr,
       DME_SELECTOR_INDEX_NULL, 0);
}
