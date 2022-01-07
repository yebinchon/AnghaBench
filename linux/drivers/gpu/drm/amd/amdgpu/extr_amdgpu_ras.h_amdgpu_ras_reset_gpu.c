
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ras {int recovery_work; int in_recovery; } ;
struct amdgpu_device {int dummy; } ;


 struct amdgpu_ras* amdgpu_ras_get_context (struct amdgpu_device*) ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static inline int amdgpu_ras_reset_gpu(struct amdgpu_device *adev,
  bool is_baco)
{
 struct amdgpu_ras *ras = amdgpu_ras_get_context(adev);

 if (atomic_cmpxchg(&ras->in_recovery, 0, 1) == 0)
  schedule_work(&ras->recovery_work);
 return 0;
}
