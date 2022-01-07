
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_ulv_param {scalar_t__ supported; } ;
struct si_power_info {struct si_ulv_param ulv; } ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_DisableULV ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ amdgpu_si_send_msg_to_smc (struct amdgpu_device*,int ) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int si_disable_ulv(struct amdgpu_device *adev)
{
 struct si_power_info *si_pi = si_get_pi(adev);
 struct si_ulv_param *ulv = &si_pi->ulv;

 if (ulv->supported)
  return (amdgpu_si_send_msg_to_smc(adev, PPSMC_MSG_DisableULV) == PPSMC_Result_OK) ?
   0 : -EINVAL;

 return 0;
}
