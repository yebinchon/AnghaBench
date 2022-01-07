
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct msm_dsi_host {int video_comp; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int DSI_IRQ_MASK_VIDEO_DONE ;
 int dsi_intr_ctrl (struct msm_dsi_host*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void dsi_wait4video_done(struct msm_dsi_host *msm_host)
{
 u32 ret = 0;
 struct device *dev = &msm_host->pdev->dev;

 dsi_intr_ctrl(msm_host, DSI_IRQ_MASK_VIDEO_DONE, 1);

 reinit_completion(&msm_host->video_comp);

 ret = wait_for_completion_timeout(&msm_host->video_comp,
   msecs_to_jiffies(70));

 if (ret == 0)
  DRM_DEV_ERROR(dev, "wait for video done timed out\n");

 dsi_intr_ctrl(msm_host, DSI_IRQ_MASK_VIDEO_DONE, 0);
}
