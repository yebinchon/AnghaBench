
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_hive_info {scalar_t__ hive_id; int pstate; int hive_lock; int reset_lock; int device_list; struct amdgpu_device* adev; } ;
struct TYPE_3__ {scalar_t__ hive_id; } ;
struct TYPE_4__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {TYPE_2__ gmc; } ;


 int AMDGPU_MAX_XGMI_HIVE ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ amdgpu_xgmi_sysfs_create (struct amdgpu_device*,struct amdgpu_hive_info*) ;
 int hive_count ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct amdgpu_hive_info* xgmi_hives ;
 int xgmi_mutex ;

struct amdgpu_hive_info *amdgpu_get_xgmi_hive(struct amdgpu_device *adev, int lock)
{
 int i;
 struct amdgpu_hive_info *tmp;

 if (!adev->gmc.xgmi.hive_id)
  return ((void*)0);

 mutex_lock(&xgmi_mutex);

 for (i = 0 ; i < hive_count; ++i) {
  tmp = &xgmi_hives[i];
  if (tmp->hive_id == adev->gmc.xgmi.hive_id) {
   if (lock)
    mutex_lock(&tmp->hive_lock);
   mutex_unlock(&xgmi_mutex);
   return tmp;
  }
 }
 if (i >= AMDGPU_MAX_XGMI_HIVE) {
  mutex_unlock(&xgmi_mutex);
  return ((void*)0);
 }


 tmp = &xgmi_hives[hive_count++];

 if (amdgpu_xgmi_sysfs_create(adev, tmp)) {
  mutex_unlock(&xgmi_mutex);
  return ((void*)0);
 }

 tmp->adev = adev;
 tmp->hive_id = adev->gmc.xgmi.hive_id;
 INIT_LIST_HEAD(&tmp->device_list);
 mutex_init(&tmp->hive_lock);
 mutex_init(&tmp->reset_lock);

 if (lock)
  mutex_lock(&tmp->hive_lock);
 tmp->pstate = -1;
 mutex_unlock(&xgmi_mutex);

 return tmp;
}
