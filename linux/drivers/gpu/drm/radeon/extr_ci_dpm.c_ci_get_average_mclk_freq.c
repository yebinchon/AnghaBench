
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
typedef scalar_t__ PPSMC_Result ;


 int PPSMC_MSG_API_GetMclkFrequency ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ ci_send_msg_to_smc_return_parameter (struct radeon_device*,int ,scalar_t__*) ;

__attribute__((used)) static u32 ci_get_average_mclk_freq(struct radeon_device *rdev)
{
 u32 mclk_freq;
 PPSMC_Result smc_result =
  ci_send_msg_to_smc_return_parameter(rdev,
          PPSMC_MSG_API_GetMclkFrequency,
          &mclk_freq);
 if (smc_result != PPSMC_Result_OK)
  mclk_freq = 0;

 return mclk_freq;
}
