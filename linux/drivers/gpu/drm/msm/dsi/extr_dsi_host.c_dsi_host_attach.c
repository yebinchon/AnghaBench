
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {scalar_t__ num_data_lanes; scalar_t__ lanes; int hpd_work; int workqueue; scalar_t__ dev; int id; int mode_flags; int format; int channel; } ;
struct mipi_dsi_host {int dummy; } ;
struct mipi_dsi_device {scalar_t__ lanes; int dev; int mode_flags; int format; int channel; } ;


 int DBG (char*,int ) ;
 int EINVAL ;
 int dsi_host_init_panel_gpios (struct msm_dsi_host*,int *) ;
 int queue_work (int ,int *) ;
 struct msm_dsi_host* to_msm_dsi_host (struct mipi_dsi_host*) ;

__attribute__((used)) static int dsi_host_attach(struct mipi_dsi_host *host,
     struct mipi_dsi_device *dsi)
{
 struct msm_dsi_host *msm_host = to_msm_dsi_host(host);
 int ret;

 if (dsi->lanes > msm_host->num_data_lanes)
  return -EINVAL;

 msm_host->channel = dsi->channel;
 msm_host->lanes = dsi->lanes;
 msm_host->format = dsi->format;
 msm_host->mode_flags = dsi->mode_flags;


 ret = dsi_host_init_panel_gpios(msm_host, &dsi->dev);
 if (ret)
  return ret;

 DBG("id=%d", msm_host->id);
 if (msm_host->dev)
  queue_work(msm_host->workqueue, &msm_host->hpd_work);

 return 0;
}
