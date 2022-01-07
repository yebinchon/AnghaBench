
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_volt {scalar_t__ max_uv; } ;
struct nvkm_cstate {int id; int head; int * domain; int voltage; } ;
struct nvkm_pstate {int list; int pstate; struct nvkm_cstate base; } ;
struct nvkm_domain {scalar_t__ name; int flags; int bios; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_clk {struct nvkm_domain* domains; TYPE_2__ subdev; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_cstepX {int freq; int voltage; } ;
struct TYPE_3__ {struct nvkm_volt* volt; struct nvkm_bios* bios; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NVKM_CLK_DOM_FLAG_CORE ;
 struct nvkm_cstate* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ nv_clk_src_max ;
 int nvbios_cstepXp (struct nvkm_bios*,int,int *,int *,struct nvbios_cstepX*) ;
 int nvkm_clk_adjust (struct nvkm_clk*,int,int ,int ,int ) ;
 scalar_t__ nvkm_volt_map_min (struct nvkm_volt*,int ) ;

__attribute__((used)) static int
nvkm_cstate_new(struct nvkm_clk *clk, int idx, struct nvkm_pstate *pstate)
{
 struct nvkm_bios *bios = clk->subdev.device->bios;
 struct nvkm_volt *volt = clk->subdev.device->volt;
 const struct nvkm_domain *domain = clk->domains;
 struct nvkm_cstate *cstate = ((void*)0);
 struct nvbios_cstepX cstepX;
 u8 ver, hdr;
 u32 data;

 data = nvbios_cstepXp(bios, idx, &ver, &hdr, &cstepX);
 if (!data)
  return -ENOENT;

 if (volt && nvkm_volt_map_min(volt, cstepX.voltage) > volt->max_uv)
  return -EINVAL;

 cstate = kzalloc(sizeof(*cstate), GFP_KERNEL);
 if (!cstate)
  return -ENOMEM;

 *cstate = pstate->base;
 cstate->voltage = cstepX.voltage;
 cstate->id = idx;

 while (domain && domain->name != nv_clk_src_max) {
  if (domain->flags & NVKM_CLK_DOM_FLAG_CORE) {
   u32 freq = nvkm_clk_adjust(clk, 1, pstate->pstate,
         domain->bios, cstepX.freq);
   cstate->domain[domain->name] = freq;
  }
  domain++;
 }

 list_add(&cstate->head, &pstate->list);
 return 0;
}
