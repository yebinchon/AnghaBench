
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_falcon {int dummy; } ;


 int kfree (struct nvkm_falcon*) ;

void
nvkm_falcon_del(struct nvkm_falcon **pfalcon)
{
 if (*pfalcon) {
  kfree(*pfalcon);
  *pfalcon = ((void*)0);
 }
}
