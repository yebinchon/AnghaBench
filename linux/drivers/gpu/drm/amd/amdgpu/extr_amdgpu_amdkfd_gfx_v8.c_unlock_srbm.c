
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct amdgpu_device {int srbm_mutex; } ;


 int WREG32 (int ,int ) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int mmSRBM_GFX_CNTL ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void unlock_srbm(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);

 WREG32(mmSRBM_GFX_CNTL, 0);
 mutex_unlock(&adev->srbm_mutex);
}
