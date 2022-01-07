
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process_device {int alloc_idr; } ;


 void* idr_find (int *,int) ;

void *kfd_process_device_translate_handle(struct kfd_process_device *pdd,
     int handle)
{
 if (handle < 0)
  return ((void*)0);

 return idr_find(&pdd->alloc_idr, handle);
}
