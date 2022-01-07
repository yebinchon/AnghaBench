
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {unsigned long long cs_timestamp_frequency_khz; } ;


 TYPE_1__* RUNTIME_INFO (struct drm_i915_private*) ;
 int div64_u64 (unsigned long long,unsigned long long) ;

__attribute__((used)) static u64 oa_exponent_to_ns(struct drm_i915_private *dev_priv, int exponent)
{
 return div64_u64(1000000000ULL * (2ULL << exponent),
    1000ULL * RUNTIME_INFO(dev_priv)->cs_timestamp_frequency_khz);
}
