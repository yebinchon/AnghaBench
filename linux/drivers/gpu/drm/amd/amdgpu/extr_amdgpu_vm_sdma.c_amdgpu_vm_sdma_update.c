
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint64_t ;
typedef scalar_t__ uint32_t ;
struct amdgpu_vm_update_params {unsigned int num_dw_left; scalar_t__ pages_addr; TYPE_5__* job; TYPE_4__* adev; } ;
struct amdgpu_bo {struct amdgpu_bo* shadow; } ;
struct TYPE_10__ {TYPE_3__* ibs; } ;
struct TYPE_7__ {TYPE_1__* vm_pte_funcs; } ;
struct TYPE_9__ {TYPE_2__ vm_manager; } ;
struct TYPE_8__ {int * ptr; scalar_t__ length_dw; } ;
struct TYPE_6__ {int copy_pte_num_dw; } ;


 unsigned int AMDGPU_VM_SDMA_MAX_NUM_DW ;
 int AMDGPU_VM_SDMA_MIN_NUM_DW ;
 int amdgpu_job_alloc_with_ib (TYPE_4__*,unsigned int,TYPE_5__**) ;
 unsigned int amdgpu_vm_map_gart (scalar_t__,unsigned int) ;
 int amdgpu_vm_sdma_commit (struct amdgpu_vm_update_params*,int *) ;
 int amdgpu_vm_sdma_copy_ptes (struct amdgpu_vm_update_params*,struct amdgpu_bo*,unsigned int,unsigned int) ;
 int amdgpu_vm_sdma_set_ptes (struct amdgpu_vm_update_params*,struct amdgpu_bo*,unsigned int,unsigned int,unsigned int,scalar_t__,unsigned int) ;
 unsigned int max (unsigned int,int ) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int amdgpu_vm_sdma_update(struct amdgpu_vm_update_params *p,
     struct amdgpu_bo *bo, uint64_t pe,
     uint64_t addr, unsigned count, uint32_t incr,
     uint64_t flags)
{
 unsigned int i, ndw, nptes;
 uint64_t *pte;
 int r;

 do {
  ndw = p->num_dw_left;
  ndw -= p->job->ibs->length_dw;

  if (ndw < 32) {
   r = amdgpu_vm_sdma_commit(p, ((void*)0));
   if (r)
    return r;


   ndw = 32;
   if (p->pages_addr)
    ndw += count * 2;
   ndw = max(ndw, AMDGPU_VM_SDMA_MIN_NUM_DW);
   ndw = min(ndw, AMDGPU_VM_SDMA_MAX_NUM_DW);

   r = amdgpu_job_alloc_with_ib(p->adev, ndw * 4, &p->job);
   if (r)
    return r;

   p->num_dw_left = ndw;
  }

  if (!p->pages_addr) {

   if (bo->shadow)
    amdgpu_vm_sdma_set_ptes(p, bo->shadow, pe, addr,
       count, incr, flags);
   amdgpu_vm_sdma_set_ptes(p, bo, pe, addr, count,
      incr, flags);
   return 0;
  }


  ndw -= p->adev->vm_manager.vm_pte_funcs->copy_pte_num_dw *
   (bo->shadow ? 2 : 1);


  ndw -= 7;

  nptes = min(count, ndw / 2);


  p->num_dw_left -= nptes * 2;
  pte = (uint64_t *)&(p->job->ibs->ptr[p->num_dw_left]);
  for (i = 0; i < nptes; ++i, addr += incr) {
   pte[i] = amdgpu_vm_map_gart(p->pages_addr, addr);
   pte[i] |= flags;
  }

  if (bo->shadow)
   amdgpu_vm_sdma_copy_ptes(p, bo->shadow, pe, nptes);
  amdgpu_vm_sdma_copy_ptes(p, bo, pe, nptes);

  pe += nptes * 8;
  count -= nptes;
 } while (count);

 return 0;
}
