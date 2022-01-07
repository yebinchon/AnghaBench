
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int best_encoder; } ;


 int enc_to_intel_dp (int ) ;
 int set_aux_backlight_enable (int ,int) ;

__attribute__((used)) static void intel_dp_aux_disable_backlight(const struct drm_connector_state *old_conn_state)
{
 set_aux_backlight_enable(enc_to_intel_dp(old_conn_state->best_encoder), 0);
}
