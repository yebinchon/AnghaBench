
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_validate_buffer {int head; } ;
struct kgd_mem {struct ttm_validate_buffer validate_list; } ;
struct amdkfd_process_info {int lock; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void remove_kgd_mem_from_kfd_bo_list(struct kgd_mem *mem,
  struct amdkfd_process_info *process_info)
{
 struct ttm_validate_buffer *bo_list_entry;

 bo_list_entry = &mem->validate_list;
 mutex_lock(&process_info->lock);
 list_del(&bo_list_entry->head);
 mutex_unlock(&process_info->lock);
}
