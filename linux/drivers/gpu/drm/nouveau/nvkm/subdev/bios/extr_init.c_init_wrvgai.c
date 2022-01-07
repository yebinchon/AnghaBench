
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvkm_device {scalar_t__ card_type; } ;
struct nvbios_init {int head; TYPE_1__* subdev; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;


 scalar_t__ NV_50 ;
 scalar_t__ init_exec (struct nvbios_init*) ;
 int nvkm_wrvgai (struct nvkm_device*,int,int,int,int) ;

__attribute__((used)) static void
init_wrvgai(struct nvbios_init *init, u16 port, u8 index, u8 value)
{
 struct nvkm_device *device = init->subdev->device;


 if (device->card_type < NV_50) {
  if (port == 0x03d4 && index == 0x44)
   init->head = 0;
 }

 if (init_exec(init)) {
  int head = init->head < 0 ? 0 : init->head;
  nvkm_wrvgai(device, head, port, index, value);
 }


 if (device->card_type < NV_50) {
  if (port == 0x03d4 && index == 0x44 && value == 3)
   init->head = 1;
 }
}
