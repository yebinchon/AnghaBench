
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int cont (char*,...) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int) ;

__attribute__((used)) static void
init_reserved(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u8 opcode = nvbios_rd08(bios, init->offset);
 u8 length, i;

 switch (opcode) {
 case 0xaa:
  length = 4;
  break;
 default:
  length = 1;
  break;
 }

 trace("RESERVED 0x%02x\t", opcode);
 for (i = 1; i < length; i++)
  cont(" 0x%02x", nvbios_rd08(bios, init->offset + i));
 cont("\n");
 init->offset += length;
}
