
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgd_dev {int dummy; } ;
struct amdgpu_device {int srbm_mutex; } ;


 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int mutex_unlock (int *) ;
 int soc15_grbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;

__attribute__((used)) static void unlock_srbm(struct kgd_dev *kgd)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);

 soc15_grbm_select(adev, 0, 0, 0, 0);
 mutex_unlock(&adev->srbm_mutex);
}
