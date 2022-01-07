
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct intel_dp {TYPE_2__* attached_connector; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_3__ {struct drm_display_mode* fixed_mode; } ;
struct TYPE_4__ {TYPE_1__ panel; } ;


 int intel_dp_link_required (int ,int) ;
 int intel_dp_max_data_rate (int,int ) ;

__attribute__((used)) static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
           int link_rate,
           u8 lane_count)
{
 const struct drm_display_mode *fixed_mode =
  intel_dp->attached_connector->panel.fixed_mode;
 int mode_rate, max_rate;

 mode_rate = intel_dp_link_required(fixed_mode->clock, 18);
 max_rate = intel_dp_max_data_rate(link_rate, lane_count);
 if (mode_rate > max_rate)
  return 0;

 return 1;
}
