
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct nvbios_init {TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int bios; } ;


 scalar_t__ bmp_mem_init_table (int ) ;
 int init_rdvgai (struct nvbios_init*,int,int) ;

__attribute__((used)) static u16
init_configure_mem_clk(struct nvbios_init *init)
{
 u16 mdata = bmp_mem_init_table(init->subdev->device->bios);
 if (mdata)
  mdata += (init_rdvgai(init, 0x03d4, 0x3c) >> 4) * 66;
 return mdata;
}
