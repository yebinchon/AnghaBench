
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* bo; int vm_status; } ;
struct amdgpu_vm_pt {int * entries; TYPE_1__ base; } ;
struct TYPE_4__ {struct TYPE_4__* shadow; int * vm_bo; } ;


 int amdgpu_bo_unref (TYPE_2__**) ;
 int kvfree (int *) ;
 int list_del (int *) ;

__attribute__((used)) static void amdgpu_vm_free_table(struct amdgpu_vm_pt *entry)
{
 if (entry->base.bo) {
  entry->base.bo->vm_bo = ((void*)0);
  list_del(&entry->base.vm_status);
  amdgpu_bo_unref(&entry->base.bo->shadow);
  amdgpu_bo_unref(&entry->base.bo);
 }
 kvfree(entry->entries);
 entry->entries = ((void*)0);
}
