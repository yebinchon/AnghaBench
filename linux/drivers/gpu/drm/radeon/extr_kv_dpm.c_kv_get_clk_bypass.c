
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {scalar_t__ caps_enable_dfs_bypass; } ;


 int kv_get_clock_difference (int,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static u32 kv_get_clk_bypass(struct radeon_device *rdev, u32 clk)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 value;

 if (pi->caps_enable_dfs_bypass) {
  if (kv_get_clock_difference(clk, 40000) < 200)
   value = 3;
  else if (kv_get_clock_difference(clk, 30000) < 200)
   value = 2;
  else if (kv_get_clock_difference(clk, 20000) < 200)
   value = 7;
  else if (kv_get_clock_difference(clk, 15000) < 200)
   value = 6;
  else if (kv_get_clock_difference(clk, 10000) < 200)
   value = 8;
  else
   value = 0;
 } else {
  value = 0;
 }

 return value;
}
