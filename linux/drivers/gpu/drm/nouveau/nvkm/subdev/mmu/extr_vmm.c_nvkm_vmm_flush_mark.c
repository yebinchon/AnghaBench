
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm_iter {scalar_t__ lvl; scalar_t__ max; int flush; } ;


 int min (int ,scalar_t__) ;

__attribute__((used)) static inline void
nvkm_vmm_flush_mark(struct nvkm_vmm_iter *it)
{
 it->flush = min(it->flush, it->max - it->lvl);
}
