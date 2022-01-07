
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process_device {int alloc_idr; } ;


 int idr_remove (int *,int) ;

void kfd_process_device_remove_obj_handle(struct kfd_process_device *pdd,
     int handle)
{
 if (handle >= 0)
  idr_remove(&pdd->alloc_idr, handle);
}
