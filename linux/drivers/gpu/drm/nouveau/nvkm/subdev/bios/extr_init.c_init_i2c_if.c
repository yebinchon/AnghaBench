
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


 int init_exec_force (struct nvbios_init*,int) ;
 int init_exec_set (struct nvbios_init*,int) ;
 int init_rdi2cr (struct nvbios_init*,int,int,int) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int,int,int,int,int) ;

__attribute__((used)) static void
init_i2c_if(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u8 index = nvbios_rd08(bios, init->offset + 1);
 u8 addr = nvbios_rd08(bios, init->offset + 2);
 u8 reg = nvbios_rd08(bios, init->offset + 3);
 u8 mask = nvbios_rd08(bios, init->offset + 4);
 u8 data = nvbios_rd08(bios, init->offset + 5);
 u8 value;

 trace("I2C_IF\tI2C[0x%02x][0x%02x][0x%02x] & 0x%02x == 0x%02x\n",
       index, addr, reg, mask, data);
 init->offset += 6;
 init_exec_force(init, 1);

 value = init_rdi2cr(init, index, addr, reg);
 if ((value & mask) != data)
  init_exec_set(init, 0);

 init_exec_force(init, 0);
}
