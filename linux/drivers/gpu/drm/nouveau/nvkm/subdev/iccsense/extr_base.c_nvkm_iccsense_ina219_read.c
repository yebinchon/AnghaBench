
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_iccsense_rail {int dummy; } ;
struct nvkm_iccsense {int dummy; } ;


 int nvkm_iccsense_ina2x9_read (struct nvkm_iccsense*,struct nvkm_iccsense_rail*,int,int) ;

__attribute__((used)) static int
nvkm_iccsense_ina219_read(struct nvkm_iccsense *iccsense,
     struct nvkm_iccsense_rail *rail)
{
 return nvkm_iccsense_ina2x9_read(iccsense, rail, 1, 2);
}
