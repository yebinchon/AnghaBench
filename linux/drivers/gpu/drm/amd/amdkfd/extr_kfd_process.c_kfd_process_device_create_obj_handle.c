
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process_device {int alloc_idr; } ;


 int GFP_KERNEL ;
 int idr_alloc (int *,void*,int ,int ,int ) ;

int kfd_process_device_create_obj_handle(struct kfd_process_device *pdd,
     void *mem)
{
 return idr_alloc(&pdd->alloc_idr, mem, 0, 0, GFP_KERNEL);
}
