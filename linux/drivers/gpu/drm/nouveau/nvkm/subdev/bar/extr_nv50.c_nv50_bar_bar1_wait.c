
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_bar {int dummy; } ;


 int nvkm_bar_flush (struct nvkm_bar*) ;

void
nv50_bar_bar1_wait(struct nvkm_bar *base)
{
 nvkm_bar_flush(base);
}
