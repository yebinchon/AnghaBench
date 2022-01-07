
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {int index; } ;
struct nvkm_falcon_func {int dummy; } ;
struct TYPE_4__ {int ports; int limit; } ;
struct TYPE_3__ {int ports; int limit; } ;
struct nvkm_falcon {char const* name; int addr; int version; int secret; int has_emem; int debug; TYPE_2__ data; TYPE_1__ code; int dmem_mutex; int mutex; struct nvkm_subdev* owner; struct nvkm_falcon_func const* func; } ;







 int mutex_init (int *) ;
 int nvkm_falcon_rd32 (struct nvkm_falcon*,int) ;
 int * nvkm_subdev_name ;
 int nvkm_warn (struct nvkm_subdev*,char*,int ) ;

void
nvkm_falcon_ctor(const struct nvkm_falcon_func *func,
   struct nvkm_subdev *subdev, const char *name, u32 addr,
   struct nvkm_falcon *falcon)
{
 u32 debug_reg;
 u32 reg;

 falcon->func = func;
 falcon->owner = subdev;
 falcon->name = name;
 falcon->addr = addr;
 mutex_init(&falcon->mutex);
 mutex_init(&falcon->dmem_mutex);

 reg = nvkm_falcon_rd32(falcon, 0x12c);
 falcon->version = reg & 0xf;
 falcon->secret = (reg >> 4) & 0x3;
 falcon->code.ports = (reg >> 8) & 0xf;
 falcon->data.ports = (reg >> 12) & 0xf;

 reg = nvkm_falcon_rd32(falcon, 0x108);
 falcon->code.limit = (reg & 0x1ff) << 8;
 falcon->data.limit = (reg & 0x3fe00) >> 1;

 switch (subdev->index) {
 case 132:
  debug_reg = 0x0;
  break;
 case 128:
  debug_reg = 0xc08;
  break;
 case 131:
  debug_reg = 0xd00;
  break;
 case 130:
  debug_reg = 0x408;
  falcon->has_emem = 1;
  break;
 case 129:
  debug_reg = 0x0;
  break;
 default:
  nvkm_warn(subdev, "unsupported falcon %s!\n",
     nvkm_subdev_name[subdev->index]);
  debug_reg = 0;
  break;
 }

 if (debug_reg) {
  u32 val = nvkm_falcon_rd32(falcon, debug_reg);
  falcon->debug = (val >> 20) & 0x1;
 }
}
