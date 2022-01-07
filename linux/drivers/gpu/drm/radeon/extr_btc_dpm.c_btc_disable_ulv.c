
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ supported; } ;
struct evergreen_power_info {TYPE_1__ ulv; } ;


 int EINVAL ;
 int PPSMC_MSG_DisableULV ;
 scalar_t__ PPSMC_Result_OK ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int btc_disable_ulv(struct radeon_device *rdev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);

 if (eg_pi->ulv.supported) {
  if (rv770_send_msg_to_smc(rdev, PPSMC_MSG_DisableULV) != PPSMC_Result_OK)
   return -EINVAL;
 }
 return 0;
}
