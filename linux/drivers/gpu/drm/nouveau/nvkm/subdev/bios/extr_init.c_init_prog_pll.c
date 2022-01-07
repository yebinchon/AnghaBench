
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_devinit {int dummy; } ;
struct nvbios_init {TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_devinit* devinit; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int nvkm_devinit_pll_set (struct nvkm_devinit*,int ,int ) ;
 int warn (char*,int ,int ) ;

__attribute__((used)) static void
init_prog_pll(struct nvbios_init *init, u32 id, u32 freq)
{
 struct nvkm_devinit *devinit = init->subdev->device->devinit;
 if (init_exec(init)) {
  int ret = nvkm_devinit_pll_set(devinit, id, freq);
  if (ret)
   warn("failed to prog pll 0x%08x to %dkHz\n", id, freq);
 }
}
