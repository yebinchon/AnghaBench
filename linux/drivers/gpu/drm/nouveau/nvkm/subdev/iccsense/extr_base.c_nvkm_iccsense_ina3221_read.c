
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_iccsense_rail {int idx; int mohm; TYPE_1__* sensor; } ;
struct nvkm_iccsense {int dummy; } ;
struct TYPE_2__ {int addr; int i2c; } ;


 int nvkm_iccsense_poll_lane (int ,int ,int,int,int,int,int ,int) ;

__attribute__((used)) static int
nvkm_iccsense_ina3221_read(struct nvkm_iccsense *iccsense,
      struct nvkm_iccsense_rail *rail)
{
 return nvkm_iccsense_poll_lane(rail->sensor->i2c, rail->sensor->addr,
           1 + (rail->idx * 2), 3,
           2 + (rail->idx * 2), 3, rail->mohm,
           40 * 8);
}
