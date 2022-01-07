
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {scalar_t__ fan; } ;
struct nvkm_fantog {int percent; } ;



__attribute__((used)) static int
nvkm_fantog_get(struct nvkm_therm *therm)
{
 struct nvkm_fantog *fan = (void *)therm->fan;
 return fan->percent;
}
