
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int failsafe; int id; } ;





 int pr_err (char*,...) ;

void enter_failsafe_mode(struct intel_vgpu *vgpu, int reason)
{
 switch (reason) {
 case 128:
  pr_err("Detected your guest driver doesn't support GVT-g.\n");
  break;
 case 129:
  pr_err("Graphics resource is not enough for the guest\n");
  break;
 case 130:
  pr_err("GVT Internal error  for the guest\n");
  break;
 default:
  break;
 }
 pr_err("Now vgpu %d will enter failsafe mode.\n", vgpu->id);
 vgpu->failsafe = 1;
}
