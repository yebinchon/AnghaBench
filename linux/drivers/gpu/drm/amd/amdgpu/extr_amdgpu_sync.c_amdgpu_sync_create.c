
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_sync {int * last_vm_update; int fences; } ;


 int hash_init (int ) ;

void amdgpu_sync_create(struct amdgpu_sync *sync)
{
 hash_init(sync->fences);
 sync->last_vm_update = ((void*)0);
}
