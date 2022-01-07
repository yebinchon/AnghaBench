
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ras_err_handler_data {int space_left; int count; TYPE_1__* bps; } ;
struct amdgpu_ras {int recovery_lock; struct ras_err_handler_data* eh_data; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {unsigned long bp; } ;


 int ENOMEM ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 scalar_t__ amdgpu_ras_realloc_eh_data_space (struct amdgpu_device*,struct ras_err_handler_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int amdgpu_ras_add_bad_pages(struct amdgpu_device *adev,
  unsigned long *bps, int pages)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct ras_err_handler_data *data;
 int i = pages;
 int ret = 0;

 if (!con || !con->eh_data || !bps || pages <= 0)
  return 0;

 mutex_lock(&con->recovery_lock);
 data = con->eh_data;
 if (!data)
  goto out;

 if (data->space_left <= pages)
  if (amdgpu_ras_realloc_eh_data_space(adev, data, pages)) {
   ret = -ENOMEM;
   goto out;
  }

 while (i--)
  data->bps[data->count++].bp = bps[i];

 data->space_left -= pages;
out:
 mutex_unlock(&con->recovery_lock);

 return ret;
}
