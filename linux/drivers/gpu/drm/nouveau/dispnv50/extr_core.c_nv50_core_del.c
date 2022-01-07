
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_core {int chan; } ;


 int kfree (struct nv50_core*) ;
 int nv50_dmac_destroy (int *) ;

void
nv50_core_del(struct nv50_core **pcore)
{
 struct nv50_core *core = *pcore;
 if (core) {
  nv50_dmac_destroy(&core->chan);
  kfree(*pcore);
  *pcore = ((void*)0);
 }
}
