
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 scalar_t__ init_condition_met (struct nvbios_init*,scalar_t__) ;
 int init_exec (struct nvbios_init*) ;
 int init_exec_set (struct nvbios_init*,int) ;
 int mdelay (int) ;
 scalar_t__ min (int,int) ;
 scalar_t__ nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
init_condition_time(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u8 cond = nvbios_rd08(bios, init->offset + 1);
 u8 retry = nvbios_rd08(bios, init->offset + 2);
 u8 wait = min((u16)retry * 50, 100);

 trace("CONDITION_TIME\t0x%02x 0x%02x\n", cond, retry);
 init->offset += 3;

 if (!init_exec(init))
  return;

 while (wait--) {
  if (init_condition_met(init, cond))
   return;
  mdelay(20);
 }

 init_exec_set(init, 0);
}
