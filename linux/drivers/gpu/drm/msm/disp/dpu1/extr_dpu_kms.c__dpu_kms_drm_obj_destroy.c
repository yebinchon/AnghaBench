
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct msm_drm_private {int num_crtcs; int num_planes; int num_connectors; int num_encoders; TYPE_6__** encoders; TYPE_7__** connectors; TYPE_8__** planes; TYPE_9__** crtcs; } ;
struct dpu_kms {TYPE_1__* dev; } ;
struct TYPE_18__ {TYPE_2__* funcs; } ;
struct TYPE_17__ {TYPE_3__* funcs; } ;
struct TYPE_16__ {TYPE_4__* funcs; } ;
struct TYPE_15__ {TYPE_5__* funcs; } ;
struct TYPE_14__ {int (* destroy ) (TYPE_6__*) ;} ;
struct TYPE_13__ {int (* destroy ) (TYPE_7__*) ;} ;
struct TYPE_12__ {int (* destroy ) (TYPE_8__*) ;} ;
struct TYPE_11__ {int (* destroy ) (TYPE_9__*) ;} ;
struct TYPE_10__ {struct msm_drm_private* dev_private; } ;


 int DPU_ERROR (char*) ;
 int stub1 (TYPE_9__*) ;
 int stub2 (TYPE_8__*) ;
 int stub3 (TYPE_7__*) ;
 int stub4 (TYPE_6__*) ;

__attribute__((used)) static void _dpu_kms_drm_obj_destroy(struct dpu_kms *dpu_kms)
{
 struct msm_drm_private *priv;
 int i;

 if (!dpu_kms) {
  DPU_ERROR("invalid dpu_kms\n");
  return;
 } else if (!dpu_kms->dev) {
  DPU_ERROR("invalid dev\n");
  return;
 } else if (!dpu_kms->dev->dev_private) {
  DPU_ERROR("invalid dev_private\n");
  return;
 }
 priv = dpu_kms->dev->dev_private;

 for (i = 0; i < priv->num_crtcs; i++)
  priv->crtcs[i]->funcs->destroy(priv->crtcs[i]);
 priv->num_crtcs = 0;

 for (i = 0; i < priv->num_planes; i++)
  priv->planes[i]->funcs->destroy(priv->planes[i]);
 priv->num_planes = 0;

 for (i = 0; i < priv->num_connectors; i++)
  priv->connectors[i]->funcs->destroy(priv->connectors[i]);
 priv->num_connectors = 0;

 for (i = 0; i < priv->num_encoders; i++)
  priv->encoders[i]->funcs->destroy(priv->encoders[i]);
 priv->num_encoders = 0;
}
