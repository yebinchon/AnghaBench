
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_devinit {int dummy; } ;
struct nvbios_init {int offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_devinit* devinit; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int init_exec_force (struct nvbios_init*,int) ;
 int nvkm_devinit_meminit (struct nvkm_devinit*) ;
 int trace (char*) ;

__attribute__((used)) static void
init_compute_mem(struct nvbios_init *init)
{
 struct nvkm_devinit *devinit = init->subdev->device->devinit;

 trace("COMPUTE_MEM\n");
 init->offset += 1;

 init_exec_force(init, 1);
 if (init_exec(init))
  nvkm_devinit_meminit(devinit);
 init_exec_force(init, 0);
}
