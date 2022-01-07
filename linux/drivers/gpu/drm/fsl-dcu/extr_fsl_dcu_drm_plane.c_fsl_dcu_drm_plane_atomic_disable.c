
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dcu_drm_device {int regmap; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {struct fsl_dcu_drm_device* dev_private; } ;


 int DCU_CTRLDESCLN (int,int) ;
 unsigned int DCU_LAYER_EN ;
 int fsl_dcu_drm_plane_index (struct drm_plane*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static void fsl_dcu_drm_plane_atomic_disable(struct drm_plane *plane,
          struct drm_plane_state *old_state)
{
 struct fsl_dcu_drm_device *fsl_dev = plane->dev->dev_private;
 unsigned int value;
 int index;

 index = fsl_dcu_drm_plane_index(plane);
 if (index < 0)
  return;

 regmap_read(fsl_dev->regmap, DCU_CTRLDESCLN(index, 4), &value);
 value &= ~DCU_LAYER_EN;
 regmap_write(fsl_dev->regmap, DCU_CTRLDESCLN(index, 4), value);
}
