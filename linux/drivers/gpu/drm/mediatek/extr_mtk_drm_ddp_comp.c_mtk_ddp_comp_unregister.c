
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_private {int ** ddp_comp; } ;
struct mtk_ddp_comp {size_t id; } ;
struct drm_device {struct mtk_drm_private* dev_private; } ;



void mtk_ddp_comp_unregister(struct drm_device *drm, struct mtk_ddp_comp *comp)
{
 struct mtk_drm_private *private = drm->dev_private;

 private->ddp_comp[comp->id] = ((void*)0);
}
