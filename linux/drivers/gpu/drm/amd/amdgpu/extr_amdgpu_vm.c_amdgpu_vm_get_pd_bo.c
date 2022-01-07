
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_6__ {TYPE_1__* bo; } ;
struct TYPE_7__ {TYPE_2__ base; } ;
struct amdgpu_vm {TYPE_3__ root; } ;
struct TYPE_8__ {int num_shared; int head; int * bo; } ;
struct amdgpu_bo_list_entry {TYPE_4__ tv; int * user_pages; scalar_t__ priority; } ;
struct TYPE_5__ {int tbo; } ;


 int list_add (int *,struct list_head*) ;

void amdgpu_vm_get_pd_bo(struct amdgpu_vm *vm,
    struct list_head *validated,
    struct amdgpu_bo_list_entry *entry)
{
 entry->priority = 0;
 entry->tv.bo = &vm->root.base.bo->tbo;

 entry->tv.num_shared = 3;
 entry->user_pages = ((void*)0);
 list_add(&entry->tv.head, validated);
}
