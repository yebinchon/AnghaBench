
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {void* te_gpio; void* disp_en_gpio; } ;
struct device {int dummy; } ;


 int DBG (char*,int) ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;

__attribute__((used)) static int dsi_host_init_panel_gpios(struct msm_dsi_host *msm_host,
   struct device *panel_device)
{
 msm_host->disp_en_gpio = devm_gpiod_get_optional(panel_device,
        "disp-enable",
        GPIOD_OUT_LOW);
 if (IS_ERR(msm_host->disp_en_gpio)) {
  DBG("cannot get disp-enable-gpios %ld",
    PTR_ERR(msm_host->disp_en_gpio));
  return PTR_ERR(msm_host->disp_en_gpio);
 }

 msm_host->te_gpio = devm_gpiod_get_optional(panel_device, "disp-te",
        GPIOD_IN);
 if (IS_ERR(msm_host->te_gpio)) {
  DBG("cannot get disp-te-gpios %ld", PTR_ERR(msm_host->te_gpio));
  return PTR_ERR(msm_host->te_gpio);
 }

 return 0;
}
