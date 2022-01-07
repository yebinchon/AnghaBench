
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct nv50_disp_mthd_list {int mthd; TYPE_3__* data; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {TYPE_1__ engine; } ;
struct nv50_disp {TYPE_2__ base; } ;
typedef int mods ;
struct TYPE_6__ {scalar_t__ mthd; scalar_t__ addr; char* name; } ;


 int info ;
 int nvkm_printk_ (struct nvkm_subdev*,int,int ,char*,scalar_t__,scalar_t__,char*,char*,char const*) ;
 scalar_t__ nvkm_rd32 (struct nvkm_device*,scalar_t__) ;
 int snprintf (char*,int,char*,char) ;

__attribute__((used)) static void
nv50_disp_mthd_list(struct nv50_disp *disp, int debug, u32 base, int c,
      const struct nv50_disp_mthd_list *list, int inst)
{
 struct nvkm_subdev *subdev = &disp->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 int i;

 for (i = 0; list->data[i].mthd; i++) {
  if (list->data[i].addr) {
   u32 next = nvkm_rd32(device, list->data[i].addr + base + 0);
   u32 prev = nvkm_rd32(device, list->data[i].addr + base + c);
   u32 mthd = list->data[i].mthd + (list->mthd * inst);
   const char *name = list->data[i].name;
   char mods[16];

   if (prev != next)
    snprintf(mods, sizeof(mods), "-> %08x", next);
   else
    snprintf(mods, sizeof(mods), "%13c", ' ');

   nvkm_printk_(subdev, debug, info,
         "\t%04x: %08x %s%s%s\n",
         mthd, prev, mods, name ? " // " : "",
         name ? name : "");
  }
 }
}
