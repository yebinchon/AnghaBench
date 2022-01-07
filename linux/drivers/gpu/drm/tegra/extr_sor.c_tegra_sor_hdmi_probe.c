
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sor {int scdc; int dev; void* hdmi_supply; void* vdd_pll_supply; void* avdd_io_supply; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*,int) ;
 void* devm_regulator_get (int ,char*) ;
 int regulator_enable (void*) ;
 int tegra_sor_hdmi_scdc_work ;

__attribute__((used)) static int tegra_sor_hdmi_probe(struct tegra_sor *sor)
{
 int err;

 sor->avdd_io_supply = devm_regulator_get(sor->dev, "avdd-io");
 if (IS_ERR(sor->avdd_io_supply)) {
  dev_err(sor->dev, "cannot get AVDD I/O supply: %ld\n",
   PTR_ERR(sor->avdd_io_supply));
  return PTR_ERR(sor->avdd_io_supply);
 }

 err = regulator_enable(sor->avdd_io_supply);
 if (err < 0) {
  dev_err(sor->dev, "failed to enable AVDD I/O supply: %d\n",
   err);
  return err;
 }

 sor->vdd_pll_supply = devm_regulator_get(sor->dev, "vdd-pll");
 if (IS_ERR(sor->vdd_pll_supply)) {
  dev_err(sor->dev, "cannot get VDD PLL supply: %ld\n",
   PTR_ERR(sor->vdd_pll_supply));
  return PTR_ERR(sor->vdd_pll_supply);
 }

 err = regulator_enable(sor->vdd_pll_supply);
 if (err < 0) {
  dev_err(sor->dev, "failed to enable VDD PLL supply: %d\n",
   err);
  return err;
 }

 sor->hdmi_supply = devm_regulator_get(sor->dev, "hdmi");
 if (IS_ERR(sor->hdmi_supply)) {
  dev_err(sor->dev, "cannot get HDMI supply: %ld\n",
   PTR_ERR(sor->hdmi_supply));
  return PTR_ERR(sor->hdmi_supply);
 }

 err = regulator_enable(sor->hdmi_supply);
 if (err < 0) {
  dev_err(sor->dev, "failed to enable HDMI supply: %d\n", err);
  return err;
 }

 INIT_DELAYED_WORK(&sor->scdc, tegra_sor_hdmi_scdc_work);

 return 0;
}
