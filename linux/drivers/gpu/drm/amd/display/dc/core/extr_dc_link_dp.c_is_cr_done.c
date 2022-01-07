
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CR_DONE_0; } ;
union lane_status {TYPE_1__ bits; } ;
typedef size_t uint32_t ;
typedef enum dc_lane_count { ____Placeholder_dc_lane_count } dc_lane_count ;



__attribute__((used)) static bool is_cr_done(enum dc_lane_count ln_count,
 union lane_status *dpcd_lane_status)
{
 bool done = 1;
 uint32_t lane;

 for (lane = 0; lane < (uint32_t)(ln_count); lane++) {
  if (!dpcd_lane_status[lane].bits.CR_DONE_0)
   done = 0;
 }
 return done;

}
