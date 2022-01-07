
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct kv_power_info {int caps_sclk_ds; } ;
struct amdgpu_device {int dummy; } ;


 int KV_MAX_DEEPSLEEP_DIVIDER_ID ;
 scalar_t__ KV_MINIMUM_ENGINE_CLOCK ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int max (int,int) ;

__attribute__((used)) static u8 kv_get_sleep_divider_id_from_clock(struct amdgpu_device *adev,
          u32 sclk, u32 min_sclk_in_sr)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 u32 i;
 u32 temp;
 u32 min = max(min_sclk_in_sr, (u32)KV_MINIMUM_ENGINE_CLOCK);

 if (sclk < min)
  return 0;

 if (!pi->caps_sclk_ds)
  return 0;

 for (i = KV_MAX_DEEPSLEEP_DIVIDER_ID; i > 0; i--) {
  temp = sclk >> i;
  if (temp >= min)
   break;
 }

 return (u8)i;
}
