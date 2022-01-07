
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int CHANNEL_EQ_DONE_0; int SYMBOL_LOCKED_0; } ;
union lane_status {TYPE_2__ bits; } ;
struct TYPE_3__ {int INTERLANE_ALIGN_DONE; } ;
union lane_align_status_updated {TYPE_1__ bits; } ;
typedef size_t uint32_t ;
typedef enum dc_lane_count { ____Placeholder_dc_lane_count } dc_lane_count ;



__attribute__((used)) static bool is_ch_eq_done(enum dc_lane_count ln_count,
 union lane_status *dpcd_lane_status,
 union lane_align_status_updated *lane_status_updated)
{
 bool done = 1;
 uint32_t lane;
 if (!lane_status_updated->bits.INTERLANE_ALIGN_DONE)
  done = 0;
 else {
  for (lane = 0; lane < (uint32_t)(ln_count); lane++) {
   if (!dpcd_lane_status[lane].bits.SYMBOL_LOCKED_0 ||
    !dpcd_lane_status[lane].bits.CHANNEL_EQ_DONE_0)
    done = 0;
  }
 }
 return done;

}
