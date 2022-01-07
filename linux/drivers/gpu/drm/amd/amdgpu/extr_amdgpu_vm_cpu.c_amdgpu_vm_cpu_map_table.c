
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_bo {int dummy; } ;


 int amdgpu_bo_kmap (struct amdgpu_bo*,int *) ;

__attribute__((used)) static int amdgpu_vm_cpu_map_table(struct amdgpu_bo *table)
{
 return amdgpu_bo_kmap(table, ((void*)0));
}
