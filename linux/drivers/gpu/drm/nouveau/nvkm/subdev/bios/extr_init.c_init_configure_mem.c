
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int major; } ;
struct nvkm_bios {TYPE_3__ version; } ;
struct nvbios_init {int offset; TYPE_2__* subdev; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct nvkm_bios* bios; } ;


 int bmp_ddr_seq_table (struct nvkm_bios*) ;
 int bmp_sdr_seq_table (struct nvkm_bios*) ;
 int init_configure_mem_clk (struct nvbios_init*) ;
 int init_done (struct nvbios_init*) ;
 int init_exec_force (struct nvbios_init*,int) ;
 int init_rdvgai (struct nvbios_init*,int,int) ;
 int init_wr32 (struct nvbios_init*,int,int) ;
 int init_wrvgai (struct nvbios_init*,int,int,int) ;
 int nvbios_rd08 (struct nvkm_bios*,int) ;
 int nvbios_rd32 (struct nvkm_bios*,int) ;
 int trace (char*) ;

__attribute__((used)) static void
init_configure_mem(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u16 mdata, sdata;
 u32 addr, data;

 trace("CONFIGURE_MEM\n");
 init->offset += 1;

 if (bios->version.major > 2) {
  init_done(init);
  return;
 }
 init_exec_force(init, 1);

 mdata = init_configure_mem_clk(init);
 sdata = bmp_sdr_seq_table(bios);
 if (nvbios_rd08(bios, mdata) & 0x01)
  sdata = bmp_ddr_seq_table(bios);
 mdata += 6;

 data = init_rdvgai(init, 0x03c4, 0x01);
 init_wrvgai(init, 0x03c4, 0x01, data | 0x20);

 for (; (addr = nvbios_rd32(bios, sdata)) != 0xffffffff; sdata += 4) {
  switch (addr) {
  case 0x10021c:
  case 0x1002d0:
  case 0x1002d4:
   data = 0x00000001;
   break;
  default:
   data = nvbios_rd32(bios, mdata);
   mdata += 4;
   if (data == 0xffffffff)
    continue;
   break;
  }

  init_wr32(init, addr, data);
 }

 init_exec_force(init, 0);
}
