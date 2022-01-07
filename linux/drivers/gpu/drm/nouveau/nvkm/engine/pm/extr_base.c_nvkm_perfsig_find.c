
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct nvkm_pm {int dummy; } ;
struct nvkm_perfsig {int name; } ;
struct nvkm_perfdom {struct nvkm_perfsig* signal; } ;


 struct nvkm_perfdom* nvkm_perfdom_find (struct nvkm_pm*,size_t) ;

__attribute__((used)) static struct nvkm_perfsig *
nvkm_perfsig_find(struct nvkm_pm *pm, u8 di, u8 si, struct nvkm_perfdom **pdom)
{
 struct nvkm_perfdom *dom = *pdom;

 if (dom == ((void*)0)) {
  dom = nvkm_perfdom_find(pm, di);
  if (dom == ((void*)0))
   return ((void*)0);
  *pdom = dom;
 }

 if (!dom->signal[si].name)
  return ((void*)0);
 return &dom->signal[si];
}
