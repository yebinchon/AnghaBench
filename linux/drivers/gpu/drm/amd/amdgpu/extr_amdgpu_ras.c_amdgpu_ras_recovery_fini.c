
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_err_handler_data {struct ras_err_handler_data* bps; } ;
struct amdgpu_ras {int recovery_lock; struct ras_err_handler_data* eh_data; int recovery_work; } ;
struct amdgpu_device {int dummy; } ;


 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int amdgpu_ras_release_bad_pages (struct amdgpu_device*) ;
 int amdgpu_ras_save_bad_pages (struct amdgpu_device*) ;
 int cancel_work_sync (int *) ;
 int kfree (struct ras_err_handler_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int amdgpu_ras_recovery_fini(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct ras_err_handler_data *data = con->eh_data;

 cancel_work_sync(&con->recovery_work);
 amdgpu_ras_save_bad_pages(adev);
 amdgpu_ras_release_bad_pages(adev);

 mutex_lock(&con->recovery_lock);
 con->eh_data = ((void*)0);
 kfree(data->bps);
 kfree(data);
 mutex_unlock(&con->recovery_lock);

 return 0;
}
