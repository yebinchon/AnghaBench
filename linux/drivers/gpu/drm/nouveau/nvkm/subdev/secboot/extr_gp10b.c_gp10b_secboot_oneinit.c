
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_secboot {int dummy; } ;
struct gm200_secboot {int dummy; } ;


 int TEGRA186_MC_BASE ;
 struct gm200_secboot* gm200_secboot (struct nvkm_secboot*) ;
 int gm200_secboot_oneinit (struct nvkm_secboot*) ;
 int gm20b_secboot_tegra_read_wpr (struct gm200_secboot*,int ) ;

__attribute__((used)) static int
gp10b_secboot_oneinit(struct nvkm_secboot *sb)
{
 struct gm200_secboot *gsb = gm200_secboot(sb);
 int ret;

 ret = gm20b_secboot_tegra_read_wpr(gsb, TEGRA186_MC_BASE);
 if (ret)
  return ret;

 return gm200_secboot_oneinit(sb);
}
