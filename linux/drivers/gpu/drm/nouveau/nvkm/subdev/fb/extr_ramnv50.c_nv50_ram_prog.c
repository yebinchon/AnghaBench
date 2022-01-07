
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_ram {int dummy; } ;
struct nvkm_device {int cfgopt; } ;
struct TYPE_6__ {TYPE_2__* fb; } ;
struct nv50_ram {int hwsq; TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;


 struct nv50_ram* nv50_ram (struct nvkm_ram*) ;
 int nvkm_boolopt (int ,char*,int) ;
 int ram_exec (int *,int ) ;

__attribute__((used)) static int
nv50_ram_prog(struct nvkm_ram *base)
{
 struct nv50_ram *ram = nv50_ram(base);
 struct nvkm_device *device = ram->base.fb->subdev.device;
 ram_exec(&ram->hwsq, nvkm_boolopt(device->cfgopt, "NvMemExec", 1));
 return 0;
}
