
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_vgpu_dpcd_data {int * data; } ;


 int DPCD_INTERLANE_ALIGN_DONE ;
 size_t DPCD_LANE0_1_STATUS ;
 size_t DPCD_LANE2_3_STATUS ;
 int DPCD_LANES_CR_DONE ;
 int DPCD_LANES_EQ_DONE ;
 size_t DPCD_LANE_ALIGN_STATUS_UPDATED ;
 int DPCD_LINK_TRAINING_DISABLED ;
 int DPCD_SINK_IN_SYNC ;
 size_t DPCD_SINK_STATUS ;
 int DPCD_SYMBOL_LOCKED ;
 int DPCD_TRAINING_PATTERN_1 ;
 int DPCD_TRAINING_PATTERN_2 ;
 int DPCD_TRAINING_PATTERN_SET_MASK ;

__attribute__((used)) static void dp_aux_ch_ctl_link_training(struct intel_vgpu_dpcd_data *dpcd,
  u8 t)
{
 if ((t & DPCD_TRAINING_PATTERN_SET_MASK) == DPCD_TRAINING_PATTERN_1) {


  dpcd->data[DPCD_LANE0_1_STATUS] |= DPCD_LANES_CR_DONE;

  dpcd->data[DPCD_LANE2_3_STATUS] |= DPCD_LANES_CR_DONE;
 } else if ((t & DPCD_TRAINING_PATTERN_SET_MASK) ==
   DPCD_TRAINING_PATTERN_2) {


  dpcd->data[DPCD_LANE0_1_STATUS] |= DPCD_LANES_EQ_DONE;
  dpcd->data[DPCD_LANE0_1_STATUS] |= DPCD_SYMBOL_LOCKED;

  dpcd->data[DPCD_LANE2_3_STATUS] |= DPCD_LANES_EQ_DONE;
  dpcd->data[DPCD_LANE2_3_STATUS] |= DPCD_SYMBOL_LOCKED;

  dpcd->data[DPCD_LANE_ALIGN_STATUS_UPDATED] |=
   DPCD_INTERLANE_ALIGN_DONE;
 } else if ((t & DPCD_TRAINING_PATTERN_SET_MASK) ==
   DPCD_LINK_TRAINING_DISABLED) {


  dpcd->data[DPCD_SINK_STATUS] = DPCD_SINK_IN_SYNC;
 }
}
