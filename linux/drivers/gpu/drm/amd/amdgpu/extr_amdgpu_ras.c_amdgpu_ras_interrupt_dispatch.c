
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_ih_data {scalar_t__ inuse; size_t wptr; int aligned_element_size; int ring_size; int ih_work; int element_size; int * ring; } ;
struct ras_manager {struct ras_ih_data ih_data; } ;
struct ras_dispatch_if {int entry; int head; } ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 struct ras_manager* amdgpu_ras_find_obj (struct amdgpu_device*,int *) ;
 int memcpy (int *,int ,int ) ;
 int schedule_work (int *) ;
 int wmb () ;

int amdgpu_ras_interrupt_dispatch(struct amdgpu_device *adev,
  struct ras_dispatch_if *info)
{
 struct ras_manager *obj = amdgpu_ras_find_obj(adev, &info->head);
 struct ras_ih_data *data = &obj->ih_data;

 if (!obj)
  return -EINVAL;

 if (data->inuse == 0)
  return 0;


 memcpy(&data->ring[data->wptr], info->entry,
   data->element_size);

 wmb();
 data->wptr = (data->aligned_element_size +
   data->wptr) % data->ring_size;

 schedule_work(&data->ih_work);

 return 0;
}
