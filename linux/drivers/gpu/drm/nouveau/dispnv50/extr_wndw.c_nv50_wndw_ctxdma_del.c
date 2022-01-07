
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw_ctxdma {int head; int object; } ;


 int kfree (struct nv50_wndw_ctxdma*) ;
 int list_del (int *) ;
 int nvif_object_fini (int *) ;

__attribute__((used)) static void
nv50_wndw_ctxdma_del(struct nv50_wndw_ctxdma *ctxdma)
{
 nvif_object_fini(&ctxdma->object);
 list_del(&ctxdma->head);
 kfree(ctxdma);
}
