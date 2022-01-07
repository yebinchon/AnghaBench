
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_validate_buffer {int num_shared; int head; int * bo; } ;
struct kgd_mem {struct amdgpu_bo* bo; struct ttm_validate_buffer validate_list; } ;
struct amdkfd_process_info {int lock; int kfd_bo_list; int userptr_valid_list; } ;
struct amdgpu_bo {int tbo; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void add_kgd_mem_to_kfd_bo_list(struct kgd_mem *mem,
    struct amdkfd_process_info *process_info,
    bool userptr)
{
 struct ttm_validate_buffer *entry = &mem->validate_list;
 struct amdgpu_bo *bo = mem->bo;

 INIT_LIST_HEAD(&entry->head);
 entry->num_shared = 1;
 entry->bo = &bo->tbo;
 mutex_lock(&process_info->lock);
 if (userptr)
  list_add_tail(&entry->head, &process_info->userptr_valid_list);
 else
  list_add_tail(&entry->head, &process_info->kfd_bo_list);
 mutex_unlock(&process_info->lock);
}
