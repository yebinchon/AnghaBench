
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


 int init_wri2cr (struct nvbios_init*,int,int,int,int) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int,int) ;

__attribute__((used)) static void
init_zm_i2c_byte(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u8 index = nvbios_rd08(bios, init->offset + 1);
 u8 addr = nvbios_rd08(bios, init->offset + 2) >> 1;
 u8 count = nvbios_rd08(bios, init->offset + 3);

 trace("ZM_I2C_BYTE\tI2C[0x%02x][0x%02x]\n", index, addr);
 init->offset += 4;

 while (count--) {
  u8 reg = nvbios_rd08(bios, init->offset + 0);
  u8 data = nvbios_rd08(bios, init->offset + 1);

  trace("\t[0x%02x] = 0x%02x\n", reg, data);
  init->offset += 2;

  init_wri2cr(init, index, addr, reg, data);
 }
}
