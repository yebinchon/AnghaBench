
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_drm_private {struct mtk_ddp_comp** ddp_comp; } ;
struct mtk_ddp_comp {size_t id; } ;
struct drm_device {struct mtk_drm_private* dev_private; } ;


 int EBUSY ;

int mtk_ddp_comp_register(struct drm_device *drm, struct mtk_ddp_comp *comp)
{
 struct mtk_drm_private *private = drm->dev_private;

 if (private->ddp_comp[comp->id])
  return -EBUSY;

 private->ddp_comp[comp->id] = comp;
 return 0;
}
