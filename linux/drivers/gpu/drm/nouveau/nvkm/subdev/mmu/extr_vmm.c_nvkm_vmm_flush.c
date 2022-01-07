
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_vmm_iter {scalar_t__ flush; TYPE_2__* vmm; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
struct TYPE_3__ {int (* flush ) (TYPE_2__*,scalar_t__) ;} ;


 scalar_t__ NVKM_VMM_LEVELS_MAX ;
 int TRA (struct nvkm_vmm_iter*,char*,scalar_t__) ;
 int stub1 (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static inline void
nvkm_vmm_flush(struct nvkm_vmm_iter *it)
{
 if (it->flush != NVKM_VMM_LEVELS_MAX) {
  if (it->vmm->func->flush) {
   TRA(it, "flush: %d", it->flush);
   it->vmm->func->flush(it->vmm, it->flush);
  }
  it->flush = NVKM_VMM_LEVELS_MAX;
 }
}
