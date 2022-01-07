
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_vm_parser {int wait; int domain; } ;
struct amdgpu_bo {int dummy; } ;


 int amdgpu_amdkfd_bo_validate (struct amdgpu_bo*,int ,int ) ;

__attribute__((used)) static int amdgpu_amdkfd_validate(void *param, struct amdgpu_bo *bo)
{
 struct amdgpu_vm_parser *p = param;

 return amdgpu_amdkfd_bo_validate(bo, p->domain, p->wait);
}
