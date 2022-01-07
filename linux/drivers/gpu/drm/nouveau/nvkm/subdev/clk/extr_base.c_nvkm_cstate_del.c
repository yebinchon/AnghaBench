
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_cstate {int head; } ;


 int kfree (struct nvkm_cstate*) ;
 int list_del (int *) ;

__attribute__((used)) static void
nvkm_cstate_del(struct nvkm_cstate *cstate)
{
 list_del(&cstate->head);
 kfree(cstate);
}
