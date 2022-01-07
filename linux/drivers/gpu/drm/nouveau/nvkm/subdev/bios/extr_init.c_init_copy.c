
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int init_rd32 (struct nvbios_init*,int ) ;
 int init_rdvgai (struct nvbios_init*,int ,int) ;
 int init_shift (int ,int) ;
 int init_wrvgai (struct nvbios_init*,int ,int,int) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int ,int,int,int ,char*,int,int) ;

__attribute__((used)) static void
init_copy(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u32 reg = nvbios_rd32(bios, init->offset + 1);
 u8 shift = nvbios_rd08(bios, init->offset + 5);
 u8 smask = nvbios_rd08(bios, init->offset + 6);
 u16 port = nvbios_rd16(bios, init->offset + 7);
 u8 index = nvbios_rd08(bios, init->offset + 9);
 u8 mask = nvbios_rd08(bios, init->offset + 10);
 u8 data;

 trace("COPY\t0x%04x[0x%02x] &= 0x%02x |= "
       "((R[0x%06x] %s 0x%02x) & 0x%02x)\n",
       port, index, mask, reg, (shift & 0x80) ? "<<" : ">>",
       (shift & 0x80) ? (0x100 - shift) : shift, smask);
 init->offset += 11;

 data = init_rdvgai(init, port, index) & mask;
 data |= init_shift(init_rd32(init, reg), shift) & smask;
 init_wrvgai(init, port, index, data);
}
