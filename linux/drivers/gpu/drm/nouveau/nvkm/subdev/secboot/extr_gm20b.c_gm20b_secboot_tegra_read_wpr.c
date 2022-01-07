
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int subdev; } ;
struct gm200_secboot {TYPE_1__ base; } ;


 int EINVAL ;
 int nvkm_error (int *,char*) ;

int
gm20b_secboot_tegra_read_wpr(struct gm200_secboot *gsb, u32 mc_base)
{
 nvkm_error(&gsb->base.subdev, "Tegra support not compiled in\n");
 return -EINVAL;
}
