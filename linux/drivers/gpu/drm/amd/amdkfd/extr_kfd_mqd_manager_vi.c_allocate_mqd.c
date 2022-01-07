
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_mqd {int dummy; } ;
struct queue_properties {int dummy; } ;
struct kfd_mem_obj {int dummy; } ;
struct kfd_dev {int dummy; } ;


 scalar_t__ kfd_gtt_sa_allocate (struct kfd_dev*,int,struct kfd_mem_obj**) ;

__attribute__((used)) static struct kfd_mem_obj *allocate_mqd(struct kfd_dev *kfd,
     struct queue_properties *q)
{
 struct kfd_mem_obj *mqd_mem_obj;

 if (kfd_gtt_sa_allocate(kfd, sizeof(struct vi_mqd),
   &mqd_mem_obj))
  return ((void*)0);

 return mqd_mem_obj;
}
