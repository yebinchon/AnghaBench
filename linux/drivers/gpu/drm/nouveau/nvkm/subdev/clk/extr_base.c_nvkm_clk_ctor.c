
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_device {int cfgopt; int event; struct nvkm_bios* bios; } ;
struct nvkm_clk_func {int nr_pstates; TYPE_1__* pstates; int domains; } ;
struct nvkm_clk {int boost_khz; int base_khz; int ustate_ac; int ustate_dc; int allow_reclock; int state_nr; int boost_mode; int pwrsrc_ntfy; int states; int waiting; int wait; int work; int domains; struct nvkm_clk_func const* func; struct nvkm_subdev subdev; } ;
struct nvkm_bios {int dummy; } ;
struct nvbios_vpstate_header {int base_id; int boost_id; } ;
struct nvbios_vpstate_entry {int clock_mhz; } ;
struct TYPE_2__ {int head; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NVKM_CLK_BOOST_NONE ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 int nvbios_vpstate_entry (struct nvkm_bios*,struct nvbios_vpstate_header*,int ,struct nvbios_vpstate_entry*) ;
 int nvbios_vpstate_parse (struct nvkm_bios*,struct nvbios_vpstate_header*) ;
 int nvkm_clk ;
 void* nvkm_clk_nstate (struct nvkm_clk*,char const*,int) ;
 int nvkm_clk_pwrsrc ;
 int nvkm_longopt (int ,char*,int ) ;
 int nvkm_notify_init (int *,int *,int ,int,int *,int ,int ,int *) ;
 int nvkm_pstate_new (struct nvkm_clk*,int ) ;
 int nvkm_pstate_work ;
 char* nvkm_stropt (int ,char*,int*) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,struct nvkm_subdev*) ;

int
nvkm_clk_ctor(const struct nvkm_clk_func *func, struct nvkm_device *device,
       int index, bool allow_reclock, struct nvkm_clk *clk)
{
 struct nvkm_subdev *subdev = &clk->subdev;
 struct nvkm_bios *bios = device->bios;
 int ret, idx, arglen;
 const char *mode;
 struct nvbios_vpstate_header h;

 nvkm_subdev_ctor(&nvkm_clk, device, index, subdev);

 if (bios && !nvbios_vpstate_parse(bios, &h)) {
  struct nvbios_vpstate_entry base, boost;
  if (!nvbios_vpstate_entry(bios, &h, h.boost_id, &boost))
   clk->boost_khz = boost.clock_mhz * 1000;
  if (!nvbios_vpstate_entry(bios, &h, h.base_id, &base))
   clk->base_khz = base.clock_mhz * 1000;
 }

 clk->func = func;
 INIT_LIST_HEAD(&clk->states);
 clk->domains = func->domains;
 clk->ustate_ac = -1;
 clk->ustate_dc = -1;
 clk->allow_reclock = allow_reclock;

 INIT_WORK(&clk->work, nvkm_pstate_work);
 init_waitqueue_head(&clk->wait);
 atomic_set(&clk->waiting, 0);


 if (!func->pstates) {
  idx = 0;
  do {
   ret = nvkm_pstate_new(clk, idx++);
  } while (ret == 0);
 } else {
  for (idx = 0; idx < func->nr_pstates; idx++)
   list_add_tail(&func->pstates[idx].head, &clk->states);
  clk->state_nr = func->nr_pstates;
 }

 ret = nvkm_notify_init(((void*)0), &device->event, nvkm_clk_pwrsrc, 1,
          ((void*)0), 0, 0, &clk->pwrsrc_ntfy);
 if (ret)
  return ret;

 mode = nvkm_stropt(device->cfgopt, "NvClkMode", &arglen);
 if (mode) {
  clk->ustate_ac = nvkm_clk_nstate(clk, mode, arglen);
  clk->ustate_dc = nvkm_clk_nstate(clk, mode, arglen);
 }

 mode = nvkm_stropt(device->cfgopt, "NvClkModeAC", &arglen);
 if (mode)
  clk->ustate_ac = nvkm_clk_nstate(clk, mode, arglen);

 mode = nvkm_stropt(device->cfgopt, "NvClkModeDC", &arglen);
 if (mode)
  clk->ustate_dc = nvkm_clk_nstate(clk, mode, arglen);

 clk->boost_mode = nvkm_longopt(device->cfgopt, "NvBoost",
           NVKM_CLK_BOOST_NONE);
 return 0;
}
