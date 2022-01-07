
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_vmm {int dummy; } ;
struct nvkm_bar {int dummy; } ;
struct TYPE_2__ {struct nvkm_vmm* bar1_vmm; } ;


 TYPE_1__* nv50_bar (struct nvkm_bar*) ;

struct nvkm_vmm *
nv50_bar_bar1_vmm(struct nvkm_bar *base)
{
 return nv50_bar(base)->bar1_vmm;
}
