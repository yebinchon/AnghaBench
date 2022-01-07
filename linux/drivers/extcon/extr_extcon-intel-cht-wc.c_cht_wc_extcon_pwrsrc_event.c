
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cht_wc_extcon_data {int usb_host; unsigned int previous_cable; int edev; int dev; int regmap; } ;


 int CHT_WC_PWRSRC_STS ;
 int CHT_WC_PWRSRC_VBUS ;
 unsigned int EXTCON_NONE ;
 int EXTCON_USB_HOST ;
 int INTEL_USB_ID_GND ;
 int INTEL_USB_RID_A ;
 int MUX_SEL_PMIC ;
 int MUX_SEL_SOC ;
 int cht_wc_extcon_enable_charging (struct cht_wc_extcon_data*,int) ;
 int cht_wc_extcon_get_charger (struct cht_wc_extcon_data*,int) ;
 int cht_wc_extcon_get_id (struct cht_wc_extcon_data*,int) ;
 int cht_wc_extcon_set_otgmode (struct cht_wc_extcon_data*,int) ;
 int cht_wc_extcon_set_phymux (struct cht_wc_extcon_data*,int ) ;
 int cht_wc_extcon_set_state (struct cht_wc_extcon_data*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static void cht_wc_extcon_pwrsrc_event(struct cht_wc_extcon_data *ext)
{
 int ret, pwrsrc_sts, id;
 unsigned int cable = EXTCON_NONE;

 bool ignore_get_charger_errors = ext->usb_host;

 ret = regmap_read(ext->regmap, CHT_WC_PWRSRC_STS, &pwrsrc_sts);
 if (ret) {
  dev_err(ext->dev, "Error reading pwrsrc status: %d\n", ret);
  return;
 }

 id = cht_wc_extcon_get_id(ext, pwrsrc_sts);
 if (id == INTEL_USB_ID_GND) {
  cht_wc_extcon_enable_charging(ext, 0);
  cht_wc_extcon_set_otgmode(ext, 1);


  goto charger_det_done;
 }

 cht_wc_extcon_set_otgmode(ext, 0);
 cht_wc_extcon_enable_charging(ext, 1);


 if (!(pwrsrc_sts & CHT_WC_PWRSRC_VBUS)) {

  cht_wc_extcon_set_phymux(ext, MUX_SEL_PMIC);
  goto set_state;
 }

 ret = cht_wc_extcon_get_charger(ext, ignore_get_charger_errors);
 if (ret >= 0)
  cable = ret;

charger_det_done:

 cht_wc_extcon_set_phymux(ext, MUX_SEL_SOC);

set_state:
 if (cable != ext->previous_cable) {
  cht_wc_extcon_set_state(ext, cable, 1);
  cht_wc_extcon_set_state(ext, ext->previous_cable, 0);
  ext->previous_cable = cable;
 }

 ext->usb_host = ((id == INTEL_USB_ID_GND) || (id == INTEL_USB_RID_A));
 extcon_set_state_sync(ext->edev, EXTCON_USB_HOST, ext->usb_host);
}
