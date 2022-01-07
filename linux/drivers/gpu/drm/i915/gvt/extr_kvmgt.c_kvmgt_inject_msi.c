
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct kvmgt_guest_info {struct intel_vgpu* vgpu; } ;
struct TYPE_2__ {int * msi_trigger; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;


 int EFAULT ;
 int ESRCH ;
 int eventfd_signal (int *,int) ;
 int handle_valid (unsigned long) ;

__attribute__((used)) static int kvmgt_inject_msi(unsigned long handle, u32 addr, u16 data)
{
 struct kvmgt_guest_info *info;
 struct intel_vgpu *vgpu;

 if (!handle_valid(handle))
  return -ESRCH;

 info = (struct kvmgt_guest_info *)handle;
 vgpu = info->vgpu;
 if (vgpu->vdev.msi_trigger == ((void*)0))
  return 0;

 if (eventfd_signal(vgpu->vdev.msi_trigger, 1) == 1)
  return 0;

 return -EFAULT;
}
