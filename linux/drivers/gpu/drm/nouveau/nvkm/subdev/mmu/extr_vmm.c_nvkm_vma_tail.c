
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nvkm_vma {scalar_t__ size; scalar_t__ addr; int head; int mapped; int busy; int user; int part; int used; int refd; int page; int sparse; int mapref; } ;


 int BUG_ON (int) ;
 int list_add (int *,int *) ;
 struct nvkm_vma* nvkm_vma_new (scalar_t__,scalar_t__) ;

struct nvkm_vma *
nvkm_vma_tail(struct nvkm_vma *vma, u64 tail)
{
 struct nvkm_vma *new;

 BUG_ON(vma->size == tail);

 if (!(new = nvkm_vma_new(vma->addr + (vma->size - tail), tail)))
  return ((void*)0);
 vma->size -= tail;

 new->mapref = vma->mapref;
 new->sparse = vma->sparse;
 new->page = vma->page;
 new->refd = vma->refd;
 new->used = vma->used;
 new->part = vma->part;
 new->user = vma->user;
 new->busy = vma->busy;
 new->mapped = vma->mapped;
 list_add(&new->head, &vma->head);
 return new;
}
