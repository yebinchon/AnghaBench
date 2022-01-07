
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct msm_gpu_submitqueue {scalar_t__ id; int node; scalar_t__ prio; scalar_t__ flags; int ref; } ;
struct msm_file_private {int queuelock; int submitqueues; int queueid; } ;
struct msm_drm_private {TYPE_1__* gpu; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ nr_rings; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct msm_gpu_submitqueue* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int msm_submitqueue_create(struct drm_device *drm, struct msm_file_private *ctx,
  u32 prio, u32 flags, u32 *id)
{
 struct msm_drm_private *priv = drm->dev_private;
 struct msm_gpu_submitqueue *queue;

 if (!ctx)
  return -ENODEV;

 queue = kzalloc(sizeof(*queue), GFP_KERNEL);

 if (!queue)
  return -ENOMEM;

 kref_init(&queue->ref);
 queue->flags = flags;

 if (priv->gpu) {
  if (prio >= priv->gpu->nr_rings)
   return -EINVAL;

  queue->prio = prio;
 }

 write_lock(&ctx->queuelock);

 queue->id = ctx->queueid++;

 if (id)
  *id = queue->id;

 list_add_tail(&queue->node, &ctx->submitqueues);

 write_unlock(&ctx->queuelock);

 return 0;
}
