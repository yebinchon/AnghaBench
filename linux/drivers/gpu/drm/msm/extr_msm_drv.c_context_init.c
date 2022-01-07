
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_file_private {int * aspace; } ;
struct msm_drm_private {TYPE_1__* gpu; } ;
struct drm_file {struct msm_file_private* driver_priv; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {int * aspace; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct msm_file_private* kzalloc (int,int ) ;
 int msm_submitqueue_init (struct drm_device*,struct msm_file_private*) ;

__attribute__((used)) static int context_init(struct drm_device *dev, struct drm_file *file)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_file_private *ctx;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 msm_submitqueue_init(dev, ctx);

 ctx->aspace = priv->gpu ? priv->gpu->aspace : ((void*)0);
 file->driver_priv = ctx;

 return 0;
}
