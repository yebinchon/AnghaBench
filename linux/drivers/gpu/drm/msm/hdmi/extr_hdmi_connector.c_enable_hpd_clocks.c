
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_platform_config {int hpd_clk_cnt; int * hpd_clk_names; scalar_t__* hpd_freq; } ;
struct hdmi {int * hpd_clks; TYPE_1__* pdev; struct hdmi_platform_config* config; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DRM_DEV_ERROR (struct device*,char*,int ,int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,scalar_t__) ;
 int dev_warn (struct device*,char*,int ,int) ;

__attribute__((used)) static void enable_hpd_clocks(struct hdmi *hdmi, bool enable)
{
 const struct hdmi_platform_config *config = hdmi->config;
 struct device *dev = &hdmi->pdev->dev;
 int i, ret;

 if (enable) {
  for (i = 0; i < config->hpd_clk_cnt; i++) {
   if (config->hpd_freq && config->hpd_freq[i]) {
    ret = clk_set_rate(hdmi->hpd_clks[i],
         config->hpd_freq[i]);
    if (ret)
     dev_warn(dev,
       "failed to set clk %s (%d)\n",
       config->hpd_clk_names[i], ret);
   }

   ret = clk_prepare_enable(hdmi->hpd_clks[i]);
   if (ret) {
    DRM_DEV_ERROR(dev,
     "failed to enable hpd clk: %s (%d)\n",
     config->hpd_clk_names[i], ret);
   }
  }
 } else {
  for (i = config->hpd_clk_cnt - 1; i >= 0; i--)
   clk_disable_unprepare(hdmi->hpd_clks[i]);
 }
}
