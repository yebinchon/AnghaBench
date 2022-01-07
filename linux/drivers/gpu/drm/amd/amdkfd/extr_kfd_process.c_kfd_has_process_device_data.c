
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int per_device_data; } ;


 int list_empty (int *) ;

bool kfd_has_process_device_data(struct kfd_process *p)
{
 return !(list_empty(&p->per_device_data));
}
