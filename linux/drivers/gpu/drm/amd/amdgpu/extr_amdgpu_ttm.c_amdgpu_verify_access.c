
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_buffer_object {int ttm; } ;
struct file {int private_data; } ;
struct TYPE_3__ {int vma_node; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct amdgpu_bo {TYPE_2__ tbo; scalar_t__ kfd_bo; } ;


 int EPERM ;
 scalar_t__ amdgpu_ttm_tt_get_usermm (int ) ;
 int drm_vma_node_verify_access (int *,int ) ;
 struct amdgpu_bo* ttm_to_amdgpu_bo (struct ttm_buffer_object*) ;

__attribute__((used)) static int amdgpu_verify_access(struct ttm_buffer_object *bo, struct file *filp)
{
 struct amdgpu_bo *abo = ttm_to_amdgpu_bo(bo);





 if (abo->kfd_bo)
  return 0;

 if (amdgpu_ttm_tt_get_usermm(bo->ttm))
  return -EPERM;
 return drm_vma_node_verify_access(&abo->tbo.base.vma_node,
       filp->private_data);
}
