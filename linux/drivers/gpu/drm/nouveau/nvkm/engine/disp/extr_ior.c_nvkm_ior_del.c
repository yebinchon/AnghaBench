
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ior {int head; } ;


 int IOR_DBG (struct nvkm_ior*,char*) ;
 int kfree (struct nvkm_ior*) ;
 int list_del (int *) ;

void
nvkm_ior_del(struct nvkm_ior **pior)
{
 struct nvkm_ior *ior = *pior;
 if (ior) {
  IOR_DBG(ior, "dtor");
  list_del(&ior->head);
  kfree(*pior);
  *pior = ((void*)0);
 }
}
