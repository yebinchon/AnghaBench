
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {int nested; int offset; TYPE_2__* subdev; } ;
struct TYPE_7__ {int (* exec ) (struct nvbios_init*) ;} ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {struct nvkm_bios* bios; } ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 int EINVAL ;
 int error (char*,size_t) ;
 TYPE_3__* init_opcode ;
 size_t nvbios_rd08 (struct nvkm_bios*,int ) ;
 int stub1 (struct nvbios_init*) ;

int
nvbios_exec(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;

 init->nested++;
 while (init->offset) {
  u8 opcode = nvbios_rd08(bios, init->offset);
  if (opcode >= ARRAY_SIZE(init_opcode) ||
      !init_opcode[opcode].exec) {
   error("unknown opcode 0x%02x\n", opcode);
   return -EINVAL;
  }

  init_opcode[opcode].exec(init);
 }
 init->nested--;
 return 0;
}
