
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqd_manager {int dev; } ;
struct kfd_mem_obj {int dummy; } ;


 int kfd_gtt_sa_free (int ,struct kfd_mem_obj*) ;

__attribute__((used)) static void free_mqd(struct mqd_manager *mm, void *mqd,
   struct kfd_mem_obj *mqd_mem_obj)
{
 kfd_gtt_sa_free(mm->dev, mqd_mem_obj);
}
