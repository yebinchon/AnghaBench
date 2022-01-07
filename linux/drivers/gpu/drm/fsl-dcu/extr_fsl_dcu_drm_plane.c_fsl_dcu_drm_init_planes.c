
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dcu_drm_device {int regmap; TYPE_1__* soc; } ;
struct drm_device {struct fsl_dcu_drm_device* dev_private; } ;
struct TYPE_2__ {int total_layer; int layer_regs; } ;


 int DCU_CTRLDESCLN (int,int) ;
 int regmap_write (int ,int ,int ) ;

void fsl_dcu_drm_init_planes(struct drm_device *dev)
{
 struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;
 int i, j;

 for (i = 0; i < fsl_dev->soc->total_layer; i++) {
  for (j = 1; j <= fsl_dev->soc->layer_regs; j++)
   regmap_write(fsl_dev->regmap, DCU_CTRLDESCLN(i, j), 0);
 }
}
