
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_free_kernel (struct amdgpu_bo**,int *,int *) ;

void amdgpu_free_static_csa(struct amdgpu_bo **bo)
{
 amdgpu_bo_free_kernel(bo, ((void*)0), ((void*)0));
}
