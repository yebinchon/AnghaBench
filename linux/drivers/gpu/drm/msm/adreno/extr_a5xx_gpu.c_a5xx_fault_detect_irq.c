
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {int id; int seqno; } ;
struct msm_gpu {int recover_work; int hangcheck_timer; TYPE_1__* funcs; struct drm_device* dev; } ;
struct msm_drm_private {int wq; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {struct msm_ringbuffer* (* active_ring ) (struct msm_gpu*) ;} ;


 int DRM_DEV_ERROR (int ,char*,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_A5XX_CP_IB1_BASE ;
 int REG_A5XX_CP_IB1_BASE_HI ;
 int REG_A5XX_CP_IB1_BUFSZ ;
 int REG_A5XX_CP_IB2_BASE ;
 int REG_A5XX_CP_IB2_BASE_HI ;
 int REG_A5XX_CP_IB2_BUFSZ ;
 int REG_A5XX_CP_RB_RPTR ;
 int REG_A5XX_CP_RB_WPTR ;
 int REG_A5XX_RBBM_STATUS ;
 int del_timer (int *) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_read64 (struct msm_gpu*,int ,int ) ;
 int queue_work (int ,int *) ;
 struct msm_ringbuffer* stub1 (struct msm_gpu*) ;

__attribute__((used)) static void a5xx_fault_detect_irq(struct msm_gpu *gpu)
{
 struct drm_device *dev = gpu->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_ringbuffer *ring = gpu->funcs->active_ring(gpu);

 DRM_DEV_ERROR(dev->dev, "gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
  ring ? ring->id : -1, ring ? ring->seqno : 0,
  gpu_read(gpu, REG_A5XX_RBBM_STATUS),
  gpu_read(gpu, REG_A5XX_CP_RB_RPTR),
  gpu_read(gpu, REG_A5XX_CP_RB_WPTR),
  gpu_read64(gpu, REG_A5XX_CP_IB1_BASE, REG_A5XX_CP_IB1_BASE_HI),
  gpu_read(gpu, REG_A5XX_CP_IB1_BUFSZ),
  gpu_read64(gpu, REG_A5XX_CP_IB2_BASE, REG_A5XX_CP_IB2_BASE_HI),
  gpu_read(gpu, REG_A5XX_CP_IB2_BUFSZ));


 del_timer(&gpu->hangcheck_timer);

 queue_work(priv->wq, &gpu->recover_work);
}
