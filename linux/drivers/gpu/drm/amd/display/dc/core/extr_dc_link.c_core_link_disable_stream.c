
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* stream_enc; } ;
struct pipe_ctx {struct dc_stream_state* stream; TYPE_4__ stream_res; } ;
struct ext_hdmi_settings {int member_0; } ;
struct TYPE_13__ {scalar_t__ DSC; } ;
struct TYPE_14__ {TYPE_6__ flags; } ;
struct dc_stream_state {scalar_t__ signal; TYPE_7__ timing; int link; TYPE_2__* sink; TYPE_1__* ctx; } ;
struct dc_link {unsigned short chip_caps; int ddc; } ;
struct TYPE_12__ {int (* disable_stream ) (struct pipe_ctx*) ;int (* blank_stream ) (struct pipe_ctx*) ;} ;
struct dc {TYPE_5__ hwss; } ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;
struct TYPE_10__ {int id; } ;
struct TYPE_9__ {struct dc_link* link; } ;
struct TYPE_8__ {struct dc* dc; } ;


 unsigned short EXT_DISPLAY_PATH_CAPS__EXT_CHIP_MASK ;
 unsigned short EXT_DISPLAY_PATH_CAPS__HDMI20_PI3EQX1204 ;
 unsigned short EXT_DISPLAY_PATH_CAPS__HDMI20_TISN65DP159RSBT ;
 scalar_t__ SIGNAL_TYPE_DISPLAY_PORT_MST ;
 int dal_ddc_service_write_scdc_data (int ,int,int) ;
 scalar_t__ dc_is_dp_signal (scalar_t__) ;
 scalar_t__ dc_is_hdmi_signal (scalar_t__) ;
 int deallocate_mst_payload (struct pipe_ctx*) ;
 int disable_link (int ,scalar_t__) ;
 int dp_set_dsc_enable (struct pipe_ctx*,int) ;
 scalar_t__ get_ext_hdmi_settings (struct pipe_ctx*,int,struct ext_hdmi_settings*) ;
 int stub1 (struct pipe_ctx*) ;
 int stub2 (struct pipe_ctx*) ;
 int write_i2c_default_retimer_setting (struct pipe_ctx*,int,int) ;
 int write_i2c_redriver_setting (struct pipe_ctx*,int) ;
 int write_i2c_retimer_setting (struct pipe_ctx*,int,int,struct ext_hdmi_settings*) ;

void core_link_disable_stream(struct pipe_ctx *pipe_ctx)
{
 struct dc *core_dc = pipe_ctx->stream->ctx->dc;
 struct dc_stream_state *stream = pipe_ctx->stream;
 struct dc_link *link = stream->sink->link;

 core_dc->hwss.blank_stream(pipe_ctx);

 if (pipe_ctx->stream->signal == SIGNAL_TYPE_DISPLAY_PORT_MST)
  deallocate_mst_payload(pipe_ctx);

 if (dc_is_hdmi_signal(pipe_ctx->stream->signal)) {
  struct ext_hdmi_settings settings = {0};
  enum engine_id eng_id = pipe_ctx->stream_res.stream_enc->id;

  unsigned short masked_chip_caps = link->chip_caps &
    EXT_DISPLAY_PATH_CAPS__EXT_CHIP_MASK;

  dal_ddc_service_write_scdc_data(
   link->ddc,
   165000,
   0);
  if (masked_chip_caps == EXT_DISPLAY_PATH_CAPS__HDMI20_TISN65DP159RSBT) {

   if (get_ext_hdmi_settings(pipe_ctx, eng_id, &settings))
    write_i2c_retimer_setting(pipe_ctx,
      0, 0, &settings);
   else
    write_i2c_default_retimer_setting(pipe_ctx,
      0, 0);
  } else if (masked_chip_caps == EXT_DISPLAY_PATH_CAPS__HDMI20_PI3EQX1204) {

   write_i2c_redriver_setting(pipe_ctx, 0);
  }
 }
 core_dc->hwss.disable_stream(pipe_ctx);

 disable_link(pipe_ctx->stream->link, pipe_ctx->stream->signal);






}
