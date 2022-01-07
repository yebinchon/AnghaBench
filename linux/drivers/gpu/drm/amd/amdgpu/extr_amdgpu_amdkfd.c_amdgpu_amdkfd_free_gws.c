
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_unref (struct amdgpu_bo**) ;

void amdgpu_amdkfd_free_gws(struct kgd_dev *kgd, void *mem_obj)
{
 struct amdgpu_bo *bo = (struct amdgpu_bo *)mem_obj;

 amdgpu_bo_unref(&bo);
}
