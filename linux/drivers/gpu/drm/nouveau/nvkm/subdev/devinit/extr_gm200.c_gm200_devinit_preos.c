
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_devinit {int dummy; } ;


 int pmu_load (struct nv50_devinit*,int,int,int *,int *) ;

void
gm200_devinit_preos(struct nv50_devinit *init, bool post)
{



 pmu_load(init, 0x01, post, ((void*)0), ((void*)0));
}
