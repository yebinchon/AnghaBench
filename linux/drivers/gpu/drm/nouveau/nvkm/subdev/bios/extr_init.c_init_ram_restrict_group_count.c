
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nvbios_init {TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int bios; } ;


 int nvbios_ramcfg_count (int ) ;

__attribute__((used)) static u8
init_ram_restrict_group_count(struct nvbios_init *init)
{
 return nvbios_ramcfg_count(init->subdev->device->bios);
}
