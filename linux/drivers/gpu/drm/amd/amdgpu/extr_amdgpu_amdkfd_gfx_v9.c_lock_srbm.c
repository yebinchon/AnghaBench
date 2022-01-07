
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int srbm_mutex; } ;


 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int mutex_lock (int *) ;
 int soc15_grbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;

__attribute__((used)) static void lock_srbm(struct kgd_dev *kgd, uint32_t mec, uint32_t pipe,
   uint32_t queue, uint32_t vmid)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);

 mutex_lock(&adev->srbm_mutex);
 soc15_grbm_select(adev, mec, pipe, queue, vmid);
}
