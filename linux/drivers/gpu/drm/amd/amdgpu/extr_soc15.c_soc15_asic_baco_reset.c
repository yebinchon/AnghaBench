
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct amd_pm_funcs* pp_funcs; void* pp_handle; } ;
struct amdgpu_device {int in_baco_reset; int dev; TYPE_1__ powerplay; } ;
struct amd_pm_funcs {scalar_t__ (* set_asic_baco_state ) (void*,int) ;int get_asic_baco_state; } ;


 int EIO ;
 int ENOENT ;
 int dev_info (int ,char*) ;
 scalar_t__ stub1 (void*,int) ;
 scalar_t__ stub2 (void*,int) ;

__attribute__((used)) static int soc15_asic_baco_reset(struct amdgpu_device *adev)
{
 void *pp_handle = adev->powerplay.pp_handle;
 const struct amd_pm_funcs *pp_funcs = adev->powerplay.pp_funcs;

 if (!pp_funcs ||!pp_funcs->get_asic_baco_state ||!pp_funcs->set_asic_baco_state)
  return -ENOENT;


 if (pp_funcs->set_asic_baco_state(pp_handle, 1))
  return -EIO;


 if (pp_funcs->set_asic_baco_state(pp_handle, 0))
  return -EIO;

 dev_info(adev->dev, "GPU BACO reset\n");

 adev->in_baco_reset = 1;

 return 0;
}
