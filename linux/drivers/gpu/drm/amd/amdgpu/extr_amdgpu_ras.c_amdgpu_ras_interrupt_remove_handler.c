
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_ih_data {scalar_t__ inuse; int ring; int ih_work; } ;
struct ras_manager {struct ras_ih_data ih_data; } ;
struct ras_ih_if {int head; } ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 struct ras_manager* amdgpu_ras_find_obj (struct amdgpu_device*,int *) ;
 int cancel_work_sync (int *) ;
 int kfree (int ) ;
 int memset (struct ras_ih_data*,int ,int) ;
 int put_obj (struct ras_manager*) ;

int amdgpu_ras_interrupt_remove_handler(struct amdgpu_device *adev,
  struct ras_ih_if *info)
{
 struct ras_manager *obj = amdgpu_ras_find_obj(adev, &info->head);
 struct ras_ih_data *data;

 if (!obj)
  return -EINVAL;

 data = &obj->ih_data;
 if (data->inuse == 0)
  return 0;

 cancel_work_sync(&data->ih_work);

 kfree(data->ring);
 memset(data, 0, sizeof(*data));
 put_obj(obj);

 return 0;
}
