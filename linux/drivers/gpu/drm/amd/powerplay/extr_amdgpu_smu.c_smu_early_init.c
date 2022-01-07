
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int pm_enabled; int mutex; struct amdgpu_device* adev; } ;
struct amdgpu_device {struct smu_context smu; } ;


 int amdgpu_dpm ;
 int mutex_init (int *) ;
 int smu_set_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int smu_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct smu_context *smu = &adev->smu;

 smu->adev = adev;
 smu->pm_enabled = !!amdgpu_dpm;
 mutex_init(&smu->mutex);

 return smu_set_funcs(adev);
}
