
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int kv_smc_dpm_enable (struct radeon_device*,int) ;

__attribute__((used)) static void kv_stop_dpm(struct radeon_device *rdev)
{
 kv_smc_dpm_enable(rdev, 0);
}
