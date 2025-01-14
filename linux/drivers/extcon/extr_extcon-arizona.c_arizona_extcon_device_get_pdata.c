
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct arizona_pdata {unsigned int hpdet_channel; unsigned int micd_detect_debounce; unsigned int micd_bias_start_time; unsigned int micd_rate; unsigned int micd_dbtime; unsigned int micd_timeout; unsigned int gpsw; void* jd_gpio5_nopull; void* jd_gpio5; void* jd_invert; void* micd_software_compare; void* micd_force_micbias; } ;
struct arizona {int dev; struct arizona_pdata pdata; } ;




 int arizona_extcon_get_micd_configs (struct device*,struct arizona*) ;
 int dev_err (int ,char*,int) ;
 void* device_property_read_bool (int ,char*) ;
 int device_property_read_u32 (int ,char*,unsigned int*) ;

__attribute__((used)) static int arizona_extcon_device_get_pdata(struct device *dev,
        struct arizona *arizona)
{
 struct arizona_pdata *pdata = &arizona->pdata;
 unsigned int val = 129;
 int ret;

 device_property_read_u32(arizona->dev, "wlf,hpdet-channel", &val);
 switch (val) {
 case 129:
 case 128:
  pdata->hpdet_channel = val;
  break;
 default:
  dev_err(arizona->dev,
   "Wrong wlf,hpdet-channel DT value %d\n", val);
  pdata->hpdet_channel = 129;
 }

 device_property_read_u32(arizona->dev, "wlf,micd-detect-debounce",
     &pdata->micd_detect_debounce);

 device_property_read_u32(arizona->dev, "wlf,micd-bias-start-time",
     &pdata->micd_bias_start_time);

 device_property_read_u32(arizona->dev, "wlf,micd-rate",
     &pdata->micd_rate);

 device_property_read_u32(arizona->dev, "wlf,micd-dbtime",
     &pdata->micd_dbtime);

 device_property_read_u32(arizona->dev, "wlf,micd-timeout-ms",
     &pdata->micd_timeout);

 pdata->micd_force_micbias = device_property_read_bool(arizona->dev,
      "wlf,micd-force-micbias");

 pdata->micd_software_compare = device_property_read_bool(arizona->dev,
      "wlf,micd-software-compare");

 pdata->jd_invert = device_property_read_bool(arizona->dev,
           "wlf,jd-invert");

 device_property_read_u32(arizona->dev, "wlf,gpsw", &pdata->gpsw);

 pdata->jd_gpio5 = device_property_read_bool(arizona->dev,
          "wlf,use-jd2");
 pdata->jd_gpio5_nopull = device_property_read_bool(arizona->dev,
      "wlf,use-jd2-nopull");

 ret = arizona_extcon_get_micd_configs(dev, arizona);
 if (ret < 0)
  dev_err(arizona->dev, "Failed to read micd configs: %d\n", ret);

 return 0;
}
