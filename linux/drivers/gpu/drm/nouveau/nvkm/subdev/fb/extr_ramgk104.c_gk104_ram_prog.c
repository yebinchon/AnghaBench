
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_ram_data {int freq; } ;
struct nvkm_ram {int dummy; } ;
struct nvkm_device {int cfgopt; } ;
struct gk104_ramfuc {int dummy; } ;
struct TYPE_6__ {struct nvkm_ram_data xition; struct nvkm_ram_data* next; TYPE_2__* fb; } ;
struct gk104_ram {TYPE_3__ base; struct gk104_ramfuc fuc; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;


 struct gk104_ram* gk104_ram (struct nvkm_ram*) ;
 int gk104_ram_prog_0 (struct gk104_ram*,int) ;
 int nvkm_boolopt (int ,char*,int) ;
 int ram_exec (struct gk104_ramfuc*,int) ;

int
gk104_ram_prog(struct nvkm_ram *base)
{
 struct gk104_ram *ram = gk104_ram(base);
 struct gk104_ramfuc *fuc = &ram->fuc;
 struct nvkm_device *device = ram->base.fb->subdev.device;
 struct nvkm_ram_data *next = ram->base.next;

 if (!nvkm_boolopt(device->cfgopt, "NvMemExec", 1)) {
  ram_exec(fuc, 0);
  return (ram->base.next == &ram->base.xition);
 }

 gk104_ram_prog_0(ram, 1000);
 ram_exec(fuc, 1);
 gk104_ram_prog_0(ram, next->freq);

 return (ram->base.next == &ram->base.xition);
}
