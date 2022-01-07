
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct lg4ff_compat_mode_switch {int dummy; } ;
struct hid_device {scalar_t__ product; } ;


 int LG4FF_MMODE_IS_MULTIMODE ;
 int LG4FF_MMODE_NOT_MULTIMODE ;
 int LG4FF_MMODE_SWITCHED ;
 scalar_t__ const USB_DEVICE_ID_LOGITECH_WHEEL ;
 int dbg_hid (char*) ;
 int hid_err (struct hid_device*,char*,int) ;
 struct lg4ff_compat_mode_switch* lg4ff_get_mode_switch_command (scalar_t__,scalar_t__) ;
 scalar_t__ lg4ff_identify_multimode_wheel (struct hid_device*,scalar_t__ const,scalar_t__ const) ;
 int lg4ff_no_autoswitch ;
 int lg4ff_switch_compatibility_mode (struct hid_device*,struct lg4ff_compat_mode_switch const*) ;

__attribute__((used)) static int lg4ff_handle_multimode_wheel(struct hid_device *hid, u16 *real_product_id, const u16 bcdDevice)
{
 const u16 reported_product_id = hid->product;
 int ret;

 *real_product_id = lg4ff_identify_multimode_wheel(hid, reported_product_id, bcdDevice);

 if (!*real_product_id) {
  *real_product_id = reported_product_id;
  dbg_hid("Wheel is not a multimode wheel\n");
  return LG4FF_MMODE_NOT_MULTIMODE;
 }



 if (reported_product_id == USB_DEVICE_ID_LOGITECH_WHEEL &&
     reported_product_id != *real_product_id &&
     !lg4ff_no_autoswitch) {
  const struct lg4ff_compat_mode_switch *s = lg4ff_get_mode_switch_command(*real_product_id, *real_product_id);

  if (!s) {
   hid_err(hid, "Invalid product id %X\n", *real_product_id);
   return LG4FF_MMODE_NOT_MULTIMODE;
  }

  ret = lg4ff_switch_compatibility_mode(hid, s);
  if (ret) {


   hid_err(hid, "Unable to switch wheel mode, errno %d\n", ret);
   return LG4FF_MMODE_IS_MULTIMODE;
  }
  return LG4FF_MMODE_SWITCHED;
 }

 return LG4FF_MMODE_IS_MULTIMODE;
}
