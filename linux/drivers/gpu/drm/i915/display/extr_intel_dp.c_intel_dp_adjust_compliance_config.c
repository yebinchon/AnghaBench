
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct link_config_limits {int min_bpp; int max_bpp; int min_clock; int max_clock; int max_lane_count; int min_lane_count; } ;
struct TYPE_3__ {int bpc; } ;
struct TYPE_4__ {scalar_t__ test_type; int test_lane_count; int test_link_rate; TYPE_1__ test_data; } ;
struct intel_dp {TYPE_2__ compliance; int num_common_rates; int common_rates; } ;
struct intel_crtc_state {int dither_force_disable; } ;


 scalar_t__ DP_TEST_LINK_TRAINING ;
 int DRM_DEBUG_KMS (char*,int) ;
 scalar_t__ intel_dp_link_params_valid (struct intel_dp*,int ,int ) ;
 int intel_dp_rate_index (int ,int ,int ) ;

void
intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
      struct intel_crtc_state *pipe_config,
      struct link_config_limits *limits)
{

 if (intel_dp->compliance.test_data.bpc != 0) {
  int bpp = 3 * intel_dp->compliance.test_data.bpc;

  limits->min_bpp = limits->max_bpp = bpp;
  pipe_config->dither_force_disable = bpp == 6 * 3;

  DRM_DEBUG_KMS("Setting pipe_bpp to %d\n", bpp);
 }


 if (intel_dp->compliance.test_type == DP_TEST_LINK_TRAINING) {
  int index;




  if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
            intel_dp->compliance.test_lane_count)) {
   index = intel_dp_rate_index(intel_dp->common_rates,
          intel_dp->num_common_rates,
          intel_dp->compliance.test_link_rate);
   if (index >= 0)
    limits->min_clock = limits->max_clock = index;
   limits->min_lane_count = limits->max_lane_count =
    intel_dp->compliance.test_lane_count;
  }
 }
}
