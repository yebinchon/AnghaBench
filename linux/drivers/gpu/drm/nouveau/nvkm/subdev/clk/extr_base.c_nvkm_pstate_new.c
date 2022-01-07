
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvkm_cstate {int * domain; int voltage; } ;
struct nvkm_pstate {int head; int pstate; int pcie_width; int pcie_speed; int fanspeed; int list; struct nvkm_cstate base; } ;
struct nvkm_domain {scalar_t__ name; int flags; int bios; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct nvkm_clk {int state_nr; int states; struct nvkm_domain* domains; TYPE_2__ subdev; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_6__ {int freq; } ;
struct nvbios_perfS {TYPE_3__ v40; } ;
struct nvbios_perfE {int pstate; int disp; int vdec; int memory; int shader; int core; int voltage; int pcie_width; int pcie_speed; int fanspeed; } ;
struct nvbios_cstepE {int index; } ;
struct TYPE_4__ {struct nvkm_bios* bios; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NVKM_CLK_DOM_FLAG_CORE ;
 struct nvkm_pstate* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 size_t nv_clk_src_core ;
 size_t nv_clk_src_dom6 ;
 scalar_t__ nv_clk_src_max ;
 size_t nv_clk_src_mem ;
 size_t nv_clk_src_shader ;
 size_t nv_clk_src_vdec ;
 scalar_t__ nvbios_cstepEm (struct nvkm_bios*,int ,int*,int*,struct nvbios_cstepE*) ;
 scalar_t__ nvbios_perfEp (struct nvkm_bios*,int,int*,int*,int*,int*,struct nvbios_perfE*) ;
 scalar_t__ nvbios_perfSp (struct nvkm_bios*,scalar_t__,int ,int*,int*,int,int,struct nvbios_perfS*) ;
 int nvkm_clk_adjust (struct nvkm_clk*,int,int ,int ,int ) ;
 int nvkm_cstate_new (struct nvkm_clk*,int,struct nvkm_pstate*) ;
 int nvkm_pstate_info (struct nvkm_clk*,struct nvkm_pstate*) ;

__attribute__((used)) static int
nvkm_pstate_new(struct nvkm_clk *clk, int idx)
{
 struct nvkm_bios *bios = clk->subdev.device->bios;
 const struct nvkm_domain *domain = clk->domains - 1;
 struct nvkm_pstate *pstate;
 struct nvkm_cstate *cstate;
 struct nvbios_cstepE cstepE;
 struct nvbios_perfE perfE;
 u8 ver, hdr, cnt, len;
 u32 data;

 data = nvbios_perfEp(bios, idx, &ver, &hdr, &cnt, &len, &perfE);
 if (!data)
  return -EINVAL;
 if (perfE.pstate == 0xff)
  return 0;

 pstate = kzalloc(sizeof(*pstate), GFP_KERNEL);
 cstate = &pstate->base;
 if (!pstate)
  return -ENOMEM;

 INIT_LIST_HEAD(&pstate->list);

 pstate->pstate = perfE.pstate;
 pstate->fanspeed = perfE.fanspeed;
 pstate->pcie_speed = perfE.pcie_speed;
 pstate->pcie_width = perfE.pcie_width;
 cstate->voltage = perfE.voltage;
 cstate->domain[nv_clk_src_core] = perfE.core;
 cstate->domain[nv_clk_src_shader] = perfE.shader;
 cstate->domain[nv_clk_src_mem] = perfE.memory;
 cstate->domain[nv_clk_src_vdec] = perfE.vdec;
 cstate->domain[nv_clk_src_dom6] = perfE.disp;

 while (ver >= 0x40 && (++domain)->name != nv_clk_src_max) {
  struct nvbios_perfS perfS;
  u8 sver = ver, shdr = hdr;
  u32 perfSe = nvbios_perfSp(bios, data, domain->bios,
       &sver, &shdr, cnt, len, &perfS);
  if (perfSe == 0 || sver != 0x40)
   continue;

  if (domain->flags & NVKM_CLK_DOM_FLAG_CORE) {
   perfS.v40.freq = nvkm_clk_adjust(clk, 0,
        pstate->pstate,
        domain->bios,
        perfS.v40.freq);
  }

  cstate->domain[domain->name] = perfS.v40.freq;
 }

 data = nvbios_cstepEm(bios, pstate->pstate, &ver, &hdr, &cstepE);
 if (data) {
  int idx = cstepE.index;
  do {
   nvkm_cstate_new(clk, idx, pstate);
  } while(idx--);
 }

 nvkm_pstate_info(clk, pstate);
 list_add_tail(&pstate->head, &clk->states);
 clk->state_nr++;
 return 0;
}
