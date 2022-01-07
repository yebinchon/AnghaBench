
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_dsi_host {int power_on; int dev_mutex; TYPE_2__* pdev; scalar_t__ disp_en_gpio; struct msm_dsi_cfg_handler* cfg_hnd; } ;
struct msm_dsi_cfg_handler {TYPE_1__* ops; } ;
struct mipi_dsi_host {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* link_clk_disable ) (struct msm_dsi_host*) ;} ;


 int DBG (char*) ;
 int dsi_ctrl_config (struct msm_dsi_host*,int,int *) ;
 int dsi_host_regulator_disable (struct msm_dsi_host*) ;
 int gpiod_set_value (scalar_t__,int ) ;
 int msm_dsi_sfpb_config (struct msm_dsi_host*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pinctrl_pm_select_sleep_state (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int stub1 (struct msm_dsi_host*) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

int msm_dsi_host_power_off(struct mipi_dsi_host *host)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);
 const struct msm_dsi_cfg_handler *cfg_hnd = msm_host->cfg_hnd;

 mutex_lock(&msm_host->dev_mutex);
 if (!msm_host->power_on) {
  DBG("dsi host already off");
  goto unlock_ret;
 }

 dsi_ctrl_config(msm_host, 0, ((void*)0));

 if (msm_host->disp_en_gpio)
  gpiod_set_value(msm_host->disp_en_gpio, 0);

 pinctrl_pm_select_sleep_state(&msm_host->pdev->dev);

 cfg_hnd->ops->link_clk_disable(msm_host);
 pm_runtime_put_autosuspend(&msm_host->pdev->dev);

 dsi_host_regulator_disable(msm_host);

 msm_dsi_sfpb_config(msm_host, 0);

 DBG("-");

 msm_host->power_on = 0;

unlock_ret:
 mutex_unlock(&msm_host->dev_mutex);
 return 0;
}
