
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_dsi_host {TYPE_1__* pdev; int dev_mutex; int cmd_mutex; int * workqueue; } ;
struct mipi_dsi_host {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DBG (char*) ;
 int destroy_workqueue (int *) ;
 int dsi_tx_buf_free (struct msm_dsi_host*) ;
 int flush_workqueue (int *) ;
 int mutex_destroy (int *) ;
 int pm_runtime_disable (int *) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

void msm_dsi_host_destroy(struct mipi_dsi_host *host)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 DBG("");
 dsi_tx_buf_free(msm_host);
 if (msm_host->workqueue) {
  flush_workqueue(msm_host->workqueue);
  destroy_workqueue(msm_host->workqueue);
  msm_host->workqueue = ((void*)0);
 }

 mutex_destroy(&msm_host->cmd_mutex);
 mutex_destroy(&msm_host->dev_mutex);

 pm_runtime_disable(&msm_host->pdev->dev);
}
