
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_kunmap (struct amdgpu_bo*) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;

void amdgpu_amdkfd_free_gtt_mem(struct kgd_dev *kgd, void *mem_obj)
{
 struct amdgpu_bo *bo = (struct amdgpu_bo *) mem_obj;

 amdgpu_bo_reserve(bo, 1);
 amdgpu_bo_kunmap(bo);
 amdgpu_bo_unpin(bo);
 amdgpu_bo_unreserve(bo);
 amdgpu_bo_unref(&(bo));
}
