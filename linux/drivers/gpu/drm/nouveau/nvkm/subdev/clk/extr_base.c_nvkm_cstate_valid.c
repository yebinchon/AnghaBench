
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_volt {int max_uv; } ;
struct nvkm_domain {size_t name; int flags; } ;
struct nvkm_cstate {int voltage; int * domain; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_clk {int boost_mode; int boost_khz; int base_khz; TYPE_2__ subdev; struct nvkm_domain* domains; } ;
struct TYPE_3__ {struct nvkm_volt* volt; } ;




 int NVKM_CLK_DOM_FLAG_VPSTATE ;
 int min (int ,int ) ;
 size_t nv_clk_src_max ;
 int nvkm_volt_map (struct nvkm_volt*,int ,int) ;

__attribute__((used)) static bool
nvkm_cstate_valid(struct nvkm_clk *clk, struct nvkm_cstate *cstate,
    u32 max_volt, int temp)
{
 const struct nvkm_domain *domain = clk->domains;
 struct nvkm_volt *volt = clk->subdev.device->volt;
 int voltage;

 while (domain && domain->name != nv_clk_src_max) {
  if (domain->flags & NVKM_CLK_DOM_FLAG_VPSTATE) {
   u32 freq = cstate->domain[domain->name];
   switch (clk->boost_mode) {
   case 128:
    if (clk->base_khz && freq > clk->base_khz)
     return 0;

   case 129:
    if (clk->boost_khz && freq > clk->boost_khz)
     return 0;
   }
  }
  domain++;
 }

 if (!volt)
  return 1;

 voltage = nvkm_volt_map(volt, cstate->voltage, temp);
 if (voltage < 0)
  return 0;
 return voltage <= min(max_volt, volt->max_uv);
}
