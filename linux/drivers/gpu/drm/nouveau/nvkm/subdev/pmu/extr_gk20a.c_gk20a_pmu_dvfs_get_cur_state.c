
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_clk {int pstate; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__ subdev; } ;
struct gk20a_pmu {TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_clk* clk; } ;



__attribute__((used)) static void
gk20a_pmu_dvfs_get_cur_state(struct gk20a_pmu *pmu, int *state)
{
 struct nvkm_clk *clk = pmu->base.subdev.device->clk;

 *state = clk->pstate;
}
