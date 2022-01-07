
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int major; } ;
struct nvkm_bios {TYPE_3__ version; } ;
struct nvbios_init {int offset; TYPE_2__* subdev; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct nvkm_bios* bios; } ;


 int init_done (struct nvbios_init*) ;
 int init_exec_force (struct nvbios_init*,int) ;
 int init_rd32 (struct nvbios_init*,int) ;
 int init_wrvgai (struct nvbios_init*,int,int,int) ;
 int trace (char*) ;

__attribute__((used)) static void
init_configure_preinit(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u32 strap;

 trace("CONFIGURE_PREINIT\n");
 init->offset += 1;

 if (bios->version.major > 2) {
  init_done(init);
  return;
 }
 init_exec_force(init, 1);

 strap = init_rd32(init, 0x101000);
 strap = ((strap << 2) & 0xf0) | ((strap & 0x40) >> 6);
 init_wrvgai(init, 0x03d4, 0x3c, strap);

 init_exec_force(init, 0);
}
