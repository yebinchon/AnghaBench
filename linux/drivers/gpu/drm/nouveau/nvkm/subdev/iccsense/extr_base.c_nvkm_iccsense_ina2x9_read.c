
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_iccsense_rail {int mohm; TYPE_1__* sensor; } ;
struct nvkm_iccsense {int dummy; } ;
struct TYPE_2__ {int addr; int i2c; } ;


 int nvkm_iccsense_poll_lane (int ,int ,int ,int ,int ,int,int ,int) ;

__attribute__((used)) static int
nvkm_iccsense_ina2x9_read(struct nvkm_iccsense *iccsense,
                          struct nvkm_iccsense_rail *rail,
     u8 shunt_reg, u8 bus_reg)
{
 return nvkm_iccsense_poll_lane(rail->sensor->i2c, rail->sensor->addr,
           shunt_reg, 0, bus_reg, 3, rail->mohm,
           10 * 4);
}
