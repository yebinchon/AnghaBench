
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_lane_count { ____Placeholder_dc_lane_count } dc_lane_count ;


 int LANE_COUNT_ONE ;

__attribute__((used)) static inline bool reached_minimum_lane_count(enum dc_lane_count lane_count)
{
 return lane_count <= LANE_COUNT_ONE;
}
