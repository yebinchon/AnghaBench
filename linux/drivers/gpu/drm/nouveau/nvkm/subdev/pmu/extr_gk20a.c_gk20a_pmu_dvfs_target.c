
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_clk {int dummy; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ subdev; } ;
struct gk20a_pmu {TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_clk* clk; } ;


 int nvkm_clk_astate (struct nvkm_clk*,int,int ,int) ;

__attribute__((used)) static int
gk20a_pmu_dvfs_target(struct gk20a_pmu *pmu, int *state)
{
 struct nvkm_clk *clk = pmu->base.subdev.device->clk;

 return nvkm_clk_astate(clk, *state, 0, 0);
}
