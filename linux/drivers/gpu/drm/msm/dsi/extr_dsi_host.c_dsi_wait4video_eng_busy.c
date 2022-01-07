
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_host {int mode_flags; scalar_t__ enabled; scalar_t__ power_on; } ;


 int MIPI_DSI_MODE_VIDEO ;
 int dsi_wait4video_done (struct msm_dsi_host*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void dsi_wait4video_eng_busy(struct msm_dsi_host *msm_host)
{
 if (!(msm_host->mode_flags & MIPI_DSI_MODE_VIDEO))
  return;

 if (msm_host->power_on && msm_host->enabled) {
  dsi_wait4video_done(msm_host);

  usleep_range(2000, 4000);
 }
}
