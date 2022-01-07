
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct kv_power_info {int acp_boot_level; } ;


 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static void kv_reset_acp_boot_level(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 pi->acp_boot_level = 0xff;
}
