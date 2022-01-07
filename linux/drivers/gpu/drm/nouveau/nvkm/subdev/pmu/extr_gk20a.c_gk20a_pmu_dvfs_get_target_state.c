
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_clk {int pstate; int state_nr; } ;
struct gk20a_pmu_dvfs_data {int p_load_max; int p_load_target; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {TYPE_3__ subdev; } ;
struct gk20a_pmu {TYPE_2__ base; struct gk20a_pmu_dvfs_data* data; } ;
struct TYPE_4__ {struct nvkm_clk* clk; } ;


 int max (int ,int) ;
 int min (int,int) ;
 int nvkm_trace (TYPE_3__*,char*,int,int) ;

__attribute__((used)) static int
gk20a_pmu_dvfs_get_target_state(struct gk20a_pmu *pmu,
    int *state, int load)
{
 struct gk20a_pmu_dvfs_data *data = pmu->data;
 struct nvkm_clk *clk = pmu->base.subdev.device->clk;
 int cur_level, level;


 level = cur_level = clk->pstate;

 if (load > data->p_load_max) {
  level = min(clk->state_nr - 1, level + (clk->state_nr / 3));
 } else {
  level += ((load - data->p_load_target) * 10 /
    data->p_load_target) / 2;
  level = max(0, level);
  level = min(clk->state_nr - 1, level);
 }

 nvkm_trace(&pmu->base.subdev, "cur level = %d, new level = %d\n",
     cur_level, level);

 *state = level;

 return (level != cur_level);
}
