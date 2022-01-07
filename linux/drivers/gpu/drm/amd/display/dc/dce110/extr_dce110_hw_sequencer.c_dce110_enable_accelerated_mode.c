
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dc_stream_state {int apply_edp_fast_boot_optimization; } ;
struct dc_state {int stream_count; TYPE_2__** streams; } ;
struct dc_link {TYPE_5__* link_enc; } ;
struct TYPE_8__ {int (* edp_power_control ) (struct dc_link*,int) ;int (* edp_backlight_control ) (struct dc_link*,int) ;int (* init_pipes ) (struct dc*,struct dc_state*) ;} ;
struct dc {TYPE_4__* ctx; TYPE_3__ hwss; } ;
struct TYPE_10__ {TYPE_1__* funcs; } ;
struct TYPE_9__ {scalar_t__ dce_version; int dc_bios; } ;
struct TYPE_7__ {scalar_t__ apply_seamless_boot_optimization; } ;
struct TYPE_6__ {scalar_t__ (* is_dig_enabled ) (TYPE_5__*) ;} ;


 scalar_t__ DCE_VERSION_8_0 ;
 scalar_t__ DCE_VERSION_8_1 ;
 scalar_t__ DCE_VERSION_8_3 ;
 int bios_set_scratch_acc_mode_change (int ) ;
 int disable_vga_and_power_gate_all_controllers (struct dc*) ;
 struct dc_link* get_edp_link (struct dc*) ;
 struct dc_link* get_edp_link_with_sink (struct dc*,struct dc_state*) ;
 struct dc_stream_state* get_edp_stream (struct dc_state*) ;
 int power_down_all_hw_blocks (struct dc*) ;
 int stub1 (struct dc*,struct dc_state*) ;
 scalar_t__ stub2 (TYPE_5__*) ;
 int stub3 (struct dc_link*,int) ;
 int stub4 (struct dc_link*,int) ;

void dce110_enable_accelerated_mode(struct dc *dc, struct dc_state *context)
{
 int i;
 struct dc_link *edp_link_with_sink = get_edp_link_with_sink(dc, context);
 struct dc_link *edp_link = get_edp_link(dc);
 struct dc_stream_state *edp_stream = ((void*)0);
 bool can_apply_edp_fast_boot = 0;
 bool can_apply_seamless_boot = 0;
 bool keep_edp_vdd_on = 0;

 if (dc->hwss.init_pipes)
  dc->hwss.init_pipes(dc, context);

 edp_stream = get_edp_stream(context);


 if (edp_link && dc->ctx->dce_version != DCE_VERSION_8_0 &&
      dc->ctx->dce_version != DCE_VERSION_8_1 &&
      dc->ctx->dce_version != DCE_VERSION_8_3) {


  if (edp_link->link_enc->funcs->is_dig_enabled(edp_link->link_enc)) {

   if (edp_stream) {
    edp_stream->apply_edp_fast_boot_optimization = 1;
    can_apply_edp_fast_boot = 1;
   }
  }


  if (edp_stream)
   keep_edp_vdd_on = 1;
 }


 for (i = 0; i < context->stream_count; i++) {
  if (context->streams[i]->apply_seamless_boot_optimization) {
   can_apply_seamless_boot = 1;
   break;
  }
 }




 if (!can_apply_edp_fast_boot && !can_apply_seamless_boot) {
  if (edp_link_with_sink && !keep_edp_vdd_on) {

   dc->hwss.edp_backlight_control(edp_link_with_sink, 0);
  }

  power_down_all_hw_blocks(dc);
  disable_vga_and_power_gate_all_controllers(dc);
  if (edp_link_with_sink && !keep_edp_vdd_on)
   dc->hwss.edp_power_control(edp_link_with_sink, 0);
 }
 bios_set_scratch_acc_mode_change(dc->ctx->dc_bios);
}
