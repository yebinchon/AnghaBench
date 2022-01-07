
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int dev; int regmap; } ;


 int CHT_WC_USBSRC ;
 int CHT_WC_USBSRC_STS_FAIL ;
 int CHT_WC_USBSRC_STS_MASK ;
 int CHT_WC_USBSRC_STS_SUCCESS ;





 int CHT_WC_USBSRC_TYPE_MASK ;



 int CHT_WC_USBSRC_TYPE_SHIFT ;
 int EXTCON_CHG_USB_ACA ;
 int EXTCON_CHG_USB_CDP ;
 int EXTCON_CHG_USB_DCP ;
 int EXTCON_CHG_USB_SDP ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,...) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int regmap_read (int ,int ,int*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int cht_wc_extcon_get_charger(struct cht_wc_extcon_data *ext,
         bool ignore_errors)
{
 int ret, usbsrc, status;
 unsigned long timeout;


 timeout = jiffies + msecs_to_jiffies(800);
 do {
  ret = regmap_read(ext->regmap, CHT_WC_USBSRC, &usbsrc);
  if (ret) {
   dev_err(ext->dev, "Error reading usbsrc: %d\n", ret);
   return ret;
  }

  status = usbsrc & CHT_WC_USBSRC_STS_MASK;
  if (status == CHT_WC_USBSRC_STS_SUCCESS ||
      status == CHT_WC_USBSRC_STS_FAIL)
   break;

  msleep(50);
 } while (time_before(jiffies, timeout));

 if (status != CHT_WC_USBSRC_STS_SUCCESS) {
  if (ignore_errors)
   return EXTCON_CHG_USB_SDP;

  if (status == CHT_WC_USBSRC_STS_FAIL)
   dev_warn(ext->dev, "Could not detect charger type\n");
  else
   dev_warn(ext->dev, "Timeout detecting charger type\n");
  return EXTCON_CHG_USB_SDP;
 }

 usbsrc = (usbsrc & CHT_WC_USBSRC_TYPE_MASK) >> CHT_WC_USBSRC_TYPE_SHIFT;
 switch (usbsrc) {
 default:
  dev_warn(ext->dev,
   "Unhandled charger type %d, defaulting to SDP\n",
    ret);
  return EXTCON_CHG_USB_SDP;
 case 128:
 case 131:
 case 129:
  return EXTCON_CHG_USB_SDP;
 case 134:
  return EXTCON_CHG_USB_CDP;
 case 133:
 case 132:
 case 130:
  return EXTCON_CHG_USB_DCP;
 case 135:
  return EXTCON_CHG_USB_ACA;
 }
}
