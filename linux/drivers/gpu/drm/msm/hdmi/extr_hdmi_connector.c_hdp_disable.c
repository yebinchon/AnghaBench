
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_platform_config {int hpd_reg_cnt; int * hpd_reg_names; } ;
struct hdmi_connector {struct hdmi* hdmi; } ;
struct hdmi {int * hpd_regs; TYPE_1__* pdev; struct hdmi_platform_config* config; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int REG_HDMI_HPD_INT_CTRL ;
 int dev_warn (struct device*,char*,int,...) ;
 int enable_hpd_clocks (struct hdmi*,int) ;
 int gpio_config (struct hdmi*,int) ;
 int hdmi_write (struct hdmi*,int ,int ) ;
 int msm_hdmi_set_mode (struct hdmi*,int) ;
 int pinctrl_pm_select_sleep_state (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void hdp_disable(struct hdmi_connector *hdmi_connector)
{
 struct hdmi *hdmi = hdmi_connector->hdmi;
 const struct hdmi_platform_config *config = hdmi->config;
 struct device *dev = &hdmi->pdev->dev;
 int i, ret = 0;


 hdmi_write(hdmi, REG_HDMI_HPD_INT_CTRL, 0);

 msm_hdmi_set_mode(hdmi, 0);

 enable_hpd_clocks(hdmi, 0);
 pm_runtime_put_autosuspend(dev);

 ret = gpio_config(hdmi, 0);
 if (ret)
  dev_warn(dev, "failed to unconfigure GPIOs: %d\n", ret);

 ret = pinctrl_pm_select_sleep_state(dev);
 if (ret)
  dev_warn(dev, "pinctrl state chg failed: %d\n", ret);

 for (i = 0; i < config->hpd_reg_cnt; i++) {
  ret = regulator_disable(hdmi->hpd_regs[i]);
  if (ret)
   dev_warn(dev, "failed to disable hpd regulator: %s (%d)\n",
     config->hpd_reg_names[i], ret);
 }
}
