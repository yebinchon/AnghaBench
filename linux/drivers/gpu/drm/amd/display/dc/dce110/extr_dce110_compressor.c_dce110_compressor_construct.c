
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int FBC_SUPPORT; int DUMMY_BACKEND; int CLK_GATING_DISABLED; } ;
struct TYPE_6__ {TYPE_1__ bits; scalar_t__ raw; } ;
struct TYPE_8__ {int lpt_channels_num; int is_enabled; int * funcs; int attached_inst; scalar_t__ dram_channels_num; scalar_t__ channel_interleave_size; scalar_t__ raw_size; scalar_t__ banks_num; int min_compress_ratio; scalar_t__ preferred_requested_size; scalar_t__ allocated_size; int memory_bus_width; scalar_t__ embedded_panel_v_size; scalar_t__ embedded_panel_h_size; struct dc_context* ctx; TYPE_2__ options; } ;
struct dce110_compressor {TYPE_4__ base; } ;
struct TYPE_7__ {int vram_width; } ;
struct dc_context {TYPE_3__ asic_id; } ;


 int CONTROLLER_ID_UNDEFINED ;
 int FBC_COMPRESS_RATIO_INVALID ;
 int dce110_compressor_funcs ;

void dce110_compressor_construct(struct dce110_compressor *compressor,
 struct dc_context *ctx)
{

 compressor->base.options.raw = 0;
 compressor->base.options.bits.FBC_SUPPORT = 1;


 compressor->base.lpt_channels_num = 1;
 compressor->base.options.bits.DUMMY_BACKEND = 0;







 compressor->base.options.bits.CLK_GATING_DISABLED = 0;

 compressor->base.ctx = ctx;
 compressor->base.embedded_panel_h_size = 0;
 compressor->base.embedded_panel_v_size = 0;
 compressor->base.memory_bus_width = ctx->asic_id.vram_width;
 compressor->base.allocated_size = 0;
 compressor->base.preferred_requested_size = 0;
 compressor->base.min_compress_ratio = FBC_COMPRESS_RATIO_INVALID;
 compressor->base.banks_num = 0;
 compressor->base.raw_size = 0;
 compressor->base.channel_interleave_size = 0;
 compressor->base.dram_channels_num = 0;
 compressor->base.lpt_channels_num = 0;
 compressor->base.attached_inst = CONTROLLER_ID_UNDEFINED;
 compressor->base.is_enabled = 0;
 compressor->base.funcs = &dce110_compressor_funcs;

}
