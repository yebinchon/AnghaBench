
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ras_err_handler_data {int last_reserved; TYPE_1__* bps; } ;
struct amdgpu_ras {int recovery_lock; struct ras_err_handler_data* eh_data; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_2__ {struct amdgpu_bo* bo; } ;


 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int amdgpu_ras_release_vram (struct amdgpu_device*,struct amdgpu_bo**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int amdgpu_ras_release_bad_pages(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct ras_err_handler_data *data;
 struct amdgpu_bo *bo;
 int i;

 if (!con || !con->eh_data)
  return 0;

 mutex_lock(&con->recovery_lock);
 data = con->eh_data;
 if (!data)
  goto out;

 for (i = data->last_reserved - 1; i >= 0; i--) {
  bo = data->bps[i].bo;

  amdgpu_ras_release_vram(adev, &bo);

  data->bps[i].bo = bo;
  data->last_reserved = i;
 }
out:
 mutex_unlock(&con->recovery_lock);
 return 0;
}
