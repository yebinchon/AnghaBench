
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int mdelay (int) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int) ;
 int udelay (int) ;

__attribute__((used)) static void
init_time(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u16 usec = nvbios_rd16(bios, init->offset + 1);

 trace("TIME\t0x%04x\n", usec);
 init->offset += 3;

 if (init_exec(init)) {
  if (usec < 1000)
   udelay(usec);
  else
   mdelay((usec + 900) / 1000);
 }
}
