
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_pp_display_configuration {int avail_mclk_switch_time_us; } ;
struct dc_state {struct dm_pp_display_configuration pp_display_cfg; } ;
struct dc {int ctx; TYPE_1__* current_state; } ;
struct TYPE_2__ {int pp_display_cfg; } ;


 int dce110_fill_display_configs (struct dc_state*,struct dm_pp_display_configuration*) ;
 int dce110_get_min_vblank_time_us (struct dc_state*) ;
 int dm_pp_apply_display_requirements (int ,struct dm_pp_display_configuration*) ;
 scalar_t__ memcmp (int *,struct dm_pp_display_configuration*,int) ;

__attribute__((used)) static void dce_pplib_apply_display_requirements(
 struct dc *dc,
 struct dc_state *context)
{
 struct dm_pp_display_configuration *pp_display_cfg = &context->pp_display_cfg;

 pp_display_cfg->avail_mclk_switch_time_us = dce110_get_min_vblank_time_us(context);

 dce110_fill_display_configs(context, pp_display_cfg);

 if (memcmp(&dc->current_state->pp_display_cfg, pp_display_cfg, sizeof(*pp_display_cfg)) != 0)
  dm_pp_apply_display_requirements(dc->ctx, pp_display_cfg);
}
