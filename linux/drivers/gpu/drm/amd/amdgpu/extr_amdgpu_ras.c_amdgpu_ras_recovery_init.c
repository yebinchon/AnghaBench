
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ras_err_handler_data {int dummy; } ;
struct amdgpu_ras {struct amdgpu_device* adev; int in_recovery; int recovery_work; int recovery_lock; struct ras_err_handler_data* eh_data; } ;
struct amdgpu_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int __GFP_ZERO ;
 int amdgpu_ras_do_recovery ;
 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 int amdgpu_ras_load_bad_pages (struct amdgpu_device*) ;
 int amdgpu_ras_reserve_bad_pages (struct amdgpu_device*) ;
 int atomic_set (int *,int ) ;
 struct ras_err_handler_data* kmalloc (int,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int amdgpu_ras_recovery_init(struct amdgpu_device *adev)
{
 struct amdgpu_ras *con = amdgpu_ras_get_context(adev);
 struct ras_err_handler_data **data = &con->eh_data;

 *data = kmalloc(sizeof(**data),
   GFP_KERNEL|__GFP_ZERO);
 if (!*data)
  return -ENOMEM;

 mutex_init(&con->recovery_lock);
 INIT_WORK(&con->recovery_work, amdgpu_ras_do_recovery);
 atomic_set(&con->in_recovery, 0);
 con->adev = adev;

 amdgpu_ras_load_bad_pages(adev);
 amdgpu_ras_reserve_bad_pages(adev);

 return 0;
}
