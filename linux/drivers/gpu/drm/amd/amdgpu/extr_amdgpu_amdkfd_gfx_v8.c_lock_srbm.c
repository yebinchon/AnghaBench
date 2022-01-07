
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int srbm_mutex; } ;


 int MEID (int) ;
 int PIPEID (int) ;
 int QUEUEID (int) ;
 int VMID (int) ;
 int WREG32 (int ,int) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int mmSRBM_GFX_CNTL ;
 int mutex_lock (int *) ;

__attribute__((used)) static void lock_srbm(struct kgd_dev *kgd, uint32_t mec, uint32_t pipe,
   uint32_t queue, uint32_t vmid)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 uint32_t value = PIPEID(pipe) | MEID(mec) | VMID(vmid) | QUEUEID(queue);

 mutex_lock(&adev->srbm_mutex);
 WREG32(mmSRBM_GFX_CNTL, value);
}
