
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process_device {int per_device_list; } ;
struct kfd_process {int per_device_data; } ;


 scalar_t__ list_is_last (int *,int *) ;
 struct kfd_process_device* list_next_entry (struct kfd_process_device*,int ) ;
 int per_device_list ;

struct kfd_process_device *kfd_get_next_process_device_data(
      struct kfd_process *p,
      struct kfd_process_device *pdd)
{
 if (list_is_last(&pdd->per_device_list, &p->per_device_data))
  return ((void*)0);
 return list_next_entry(pdd, per_device_list);
}
