
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct nvbios_init {int ramcfg; TYPE_4__* subdev; } ;
struct TYPE_8__ {TYPE_3__* device; } ;
struct TYPE_7__ {TYPE_2__* bios; } ;
struct TYPE_5__ {int major; } ;
struct TYPE_6__ {TYPE_1__ version; } ;


 int nvbios_ramcfg_index (TYPE_4__*) ;

__attribute__((used)) static u8
init_ram_restrict(struct nvbios_init *init)
{
 if (!init->ramcfg || init->subdev->device->bios->version.major < 0x70)
  init->ramcfg = 0x80000000 | nvbios_ramcfg_index(init->subdev);
 return (init->ramcfg & 0x7fffffff);
}
