
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int PPSMC_MSG_PG_SIMD_Config ;
 int trinity_notify_message_to_smu (struct radeon_device*,int ) ;

int trinity_gfx_dynamic_mgpg_config(struct radeon_device *rdev)
{
 return trinity_notify_message_to_smu(rdev, PPSMC_MSG_PG_SIMD_Config);
}
