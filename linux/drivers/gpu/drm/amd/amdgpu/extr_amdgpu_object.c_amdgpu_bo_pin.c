
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_pin_restricted (struct amdgpu_bo*,int ,int ,int ) ;

int amdgpu_bo_pin(struct amdgpu_bo *bo, u32 domain)
{
 return amdgpu_bo_pin_restricted(bo, domain, 0, 0);
}
