
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
{
 return ~((1 << lane_count) - 1) & 0xf;
}
