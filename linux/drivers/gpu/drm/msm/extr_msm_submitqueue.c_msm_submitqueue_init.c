
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_file_private {int queuelock; int submitqueues; } ;
struct msm_drm_private {TYPE_1__* gpu; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ nr_rings; } ;


 int INIT_LIST_HEAD (int *) ;
 int clamp_t (int ,int,int ,scalar_t__) ;
 int msm_submitqueue_create (struct drm_device*,struct msm_file_private*,int,int ,int *) ;
 int rwlock_init (int *) ;
 int uint32_t ;

int msm_submitqueue_init(struct drm_device *drm, struct msm_file_private *ctx)
{
 struct msm_drm_private *priv = drm->dev_private;
 int default_prio;

 if (!ctx)
  return 0;





 default_prio = priv->gpu ?
  clamp_t(uint32_t, 2, 0, priv->gpu->nr_rings - 1) : 0;

 INIT_LIST_HEAD(&ctx->submitqueues);

 rwlock_init(&ctx->queuelock);

 return msm_submitqueue_create(drm, ctx, default_prio, 0, ((void*)0));
}
