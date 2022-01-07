
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct link_encoder {TYPE_3__* ctx; } ;
struct dpcssys_phy_seq_cfg {int dummy; } ;
struct dcn20_link_encoder {struct dpcssys_phy_seq_cfg phy_seq_cfg; } ;
struct dcn10_link_encoder {int dummy; } ;
struct dc_link_settings {int dummy; } ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;
struct TYPE_6__ {TYPE_2__* dc; } ;
struct TYPE_4__ {int avoid_vbios_exec_table; } ;
struct TYPE_5__ {TYPE_1__ debug; } ;


 int SIGNAL_TYPE_DISPLAY_PORT ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;
 int dcn10_link_encoder_enable_dp_output (struct link_encoder*,struct dc_link_settings const*,int) ;
 int dcn10_link_encoder_setup (struct link_encoder*,int ) ;
 int enc1_configure_encoder (struct dcn10_link_encoder*,struct dc_link_settings const*) ;
 int update_cfg_data (struct dcn10_link_encoder*,struct dc_link_settings const*,struct dpcssys_phy_seq_cfg*) ;

void dcn20_link_encoder_enable_dp_output(
 struct link_encoder *enc,
 const struct dc_link_settings *link_settings,
 enum clock_source_id clock_source)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);
 struct dcn20_link_encoder *enc20 = (struct dcn20_link_encoder *) enc10;
 struct dpcssys_phy_seq_cfg *cfg = &enc20->phy_seq_cfg;

 if (!enc->ctx->dc->debug.avoid_vbios_exec_table) {
  dcn10_link_encoder_enable_dp_output(enc, link_settings, clock_source);
  return;
 }

 if (!update_cfg_data(enc10, link_settings, cfg))
  return;

 enc1_configure_encoder(enc10, link_settings);

 dcn10_link_encoder_setup(enc, SIGNAL_TYPE_DISPLAY_PORT);

}
