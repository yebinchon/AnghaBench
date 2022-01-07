
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
typedef scalar_t__ PPSMC_Result ;


 int PPSMC_MSG_API_GetSclkFrequency ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ ci_send_msg_to_smc_return_parameter (struct radeon_device*,int ,scalar_t__*) ;

__attribute__((used)) static u32 ci_get_average_sclk_freq(struct radeon_device *rdev)
{
 u32 sclk_freq;
 PPSMC_Result smc_result =
  ci_send_msg_to_smc_return_parameter(rdev,
          PPSMC_MSG_API_GetSclkFrequency,
          &sclk_freq);
 if (smc_result != PPSMC_Result_OK)
  sclk_freq = 0;

 return sclk_freq;
}
