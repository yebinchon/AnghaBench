
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_dmac {int push; int base; int sync; int vram; } ;


 int nv50_chan_destroy (int *) ;
 int nvif_mem_fini (int *) ;
 int nvif_object_fini (int *) ;

void
nv50_dmac_destroy(struct nv50_dmac *dmac)
{
 nvif_object_fini(&dmac->vram);
 nvif_object_fini(&dmac->sync);

 nv50_chan_destroy(&dmac->base);

 nvif_mem_fini(&dmac->push);
}
