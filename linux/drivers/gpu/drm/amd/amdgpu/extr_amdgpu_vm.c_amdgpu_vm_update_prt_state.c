
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int prt_lock; int num_prt_users; } ;
struct TYPE_5__ {TYPE_1__* gmc_funcs; } ;
struct amdgpu_device {TYPE_3__ vm_manager; TYPE_2__ gmc; } ;
struct TYPE_4__ {int (* set_prt ) (struct amdgpu_device*,int) ;} ;


 int atomic_read (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct amdgpu_device*,int) ;

__attribute__((used)) static void amdgpu_vm_update_prt_state(struct amdgpu_device *adev)
{
 unsigned long flags;
 bool enable;

 spin_lock_irqsave(&adev->vm_manager.prt_lock, flags);
 enable = !!atomic_read(&adev->vm_manager.num_prt_users);
 adev->gmc.gmc_funcs->set_prt(adev, enable);
 spin_unlock_irqrestore(&adev->vm_manager.prt_lock, flags);
}
