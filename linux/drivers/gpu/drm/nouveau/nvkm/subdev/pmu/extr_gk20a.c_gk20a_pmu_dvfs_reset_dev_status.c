
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_falcon {int dummy; } ;
struct TYPE_2__ {struct nvkm_falcon* falcon; } ;
struct gk20a_pmu {TYPE_1__ base; } ;


 int BUSY_SLOT ;
 int CLK_SLOT ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;

__attribute__((used)) static void
gk20a_pmu_dvfs_reset_dev_status(struct gk20a_pmu *pmu)
{
 struct nvkm_falcon *falcon = pmu->base.falcon;

 nvkm_falcon_wr32(falcon, 0x508 + (BUSY_SLOT * 0x10), 0x80000000);
 nvkm_falcon_wr32(falcon, 0x508 + (CLK_SLOT * 0x10), 0x80000000);
}
