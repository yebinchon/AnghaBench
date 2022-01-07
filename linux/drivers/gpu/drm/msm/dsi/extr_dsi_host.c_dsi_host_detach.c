
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int hpd_work; int workqueue; scalar_t__ dev; int id; int * device_node; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {int dummy; } ;


 int DBG (char*,int ) ;
 int queue_work (int ,int *) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

__attribute__((used)) static int dsi_host_detach(struct mipi_dsi_host *host,
     struct mipi_dsi_device *dsi)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);

 msm_host->device_node = ((void*)0);

 DBG("id=%d", msm_host->id);
 if (msm_host->dev)
  queue_work(msm_host->workqueue, &msm_host->hpd_work);

 return 0;
}
