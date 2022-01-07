
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_24__ ;
typedef struct TYPE_37__ TYPE_21__ ;
typedef struct TYPE_36__ TYPE_20__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_19__ ;
typedef struct TYPE_33__ TYPE_18__ ;
typedef struct TYPE_32__ TYPE_17__ ;
typedef struct TYPE_31__ TYPE_16__ ;
typedef struct TYPE_30__ TYPE_15__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_29__ {int xtalin_clock_inKhz; int dchub_ref_clock_inKhz; int dccg_ref_clock_inKhz; } ;
struct resource_pool {int audio_count; struct audio** audios; TYPE_1__** dscs; TYPE_17__* res_cap; TYPE_14__ ref_clocks; TYPE_20__* hubbub; TYPE_21__* dccg; struct dmcu* dmcu; struct abm* abm; } ;
struct dmcu {TYPE_5__* funcs; } ;
struct dce_hwseq {int dummy; } ;
struct TYPE_31__ {int link_active; } ;
struct dc_link {TYPE_16__ link_status; TYPE_19__* link_enc; } ;
struct TYPE_25__ {int crystal_frequency; } ;
struct TYPE_26__ {TYPE_10__ pll_info; } ;
struct dc_bios {TYPE_8__* funcs; TYPE_11__ fw_info; scalar_t__ fw_info_valid; } ;
struct TYPE_33__ {int (* enable_power_gating_plane ) (struct dce_hwseq*,int) ;int (* init_pipes ) (struct dc*,int ) ;int (* dsc_pg_control ) (struct dce_hwseq*,int ,int) ;int (* bios_golden_init ) (struct dc*) ;int (* disable_vga ) (struct dce_hwseq*) ;} ;
struct TYPE_44__ {int disable_clock_gate; } ;
struct TYPE_39__ {scalar_t__ power_down_display_on_boot; } ;
struct dc {int link_count; struct dce_hwseq* hwseq; TYPE_18__ hwss; TYPE_7__ debug; int current_state; TYPE_2__ config; struct dc_link** links; TYPE_12__* ctx; struct resource_pool* res_pool; TYPE_24__* clk_mgr; } ;
struct audio {TYPE_3__* funcs; } ;
struct abm {int dmcu_is_running; TYPE_4__* funcs; } ;
struct TYPE_46__ {int (* get_dccg_ref_freq ) (TYPE_21__*,int ,int *) ;int (* dccg_init ) (TYPE_21__*) ;} ;
struct TYPE_45__ {scalar_t__ (* is_accelerated_mode ) (struct dc_bios*) ;} ;
struct TYPE_43__ {int (* init_clocks ) (TYPE_24__*) ;} ;
struct TYPE_42__ {int (* is_dmcu_initialized ) (struct dmcu*) ;int (* dmcu_init ) (struct dmcu*) ;} ;
struct TYPE_41__ {int (* abm_init ) (struct abm*) ;int (* init_backlight ) (struct abm*) ;} ;
struct TYPE_40__ {int (* hw_init ) (struct audio*) ;} ;
struct TYPE_38__ {TYPE_6__* funcs; } ;
struct TYPE_37__ {TYPE_9__* funcs; } ;
struct TYPE_36__ {TYPE_13__* funcs; } ;
struct TYPE_35__ {int inst; } ;
struct TYPE_34__ {TYPE_15__* funcs; } ;
struct TYPE_32__ {int num_dsc; } ;
struct TYPE_30__ {scalar_t__ (* is_dig_enabled ) (TYPE_19__*) ;int (* hw_init ) (TYPE_19__*) ;} ;
struct TYPE_28__ {int (* get_dchub_ref_freq ) (TYPE_20__*,int ,int *) ;} ;
struct TYPE_27__ {struct dc_bios* dc_bios; int dce_environment; } ;


 int ASSERT_CRITICAL (int) ;
 int DCCG_GATE_DISABLE_CNTL ;
 int DCCG_GATE_DISABLE_CNTL2 ;
 int DCFCLK_CNTL ;
 int DCFCLK_GATE_DIS ;
 int DCHUBBUB_GLOBAL_TIMER_CNTL ;
 int DCHUBBUB_GLOBAL_TIMER_ENABLE ;
 int DIO_MEM_PWR_CTRL ;
 scalar_t__ IS_FPGA_MAXIMUS_DC (int ) ;
 int REFCLK_CNTL ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WRITE (int ,int ) ;
 int stub1 (TYPE_24__*) ;
 scalar_t__ stub10 (TYPE_19__*) ;
 int stub11 (struct dce_hwseq*,int ,int) ;
 scalar_t__ stub12 (struct dc_bios*) ;
 int stub13 (struct dc*,int ) ;
 int stub14 (struct audio*) ;
 int stub15 (struct abm*) ;
 int stub16 (struct abm*) ;
 int stub17 (struct dmcu*) ;
 int stub18 (struct dmcu*) ;
 int stub19 (struct dce_hwseq*,int) ;
 int stub2 (TYPE_21__*) ;
 int stub3 (struct dce_hwseq*,int) ;
 scalar_t__ stub4 (struct dc_bios*) ;
 int stub5 (struct dce_hwseq*) ;
 int stub6 (struct dc*) ;
 int stub7 (TYPE_21__*,int ,int *) ;
 int stub8 (TYPE_20__*,int ,int *) ;
 int stub9 (TYPE_19__*) ;

__attribute__((used)) static void dcn10_init_hw(struct dc *dc)
{
 int i;
 struct abm *abm = dc->res_pool->abm;
 struct dmcu *dmcu = dc->res_pool->dmcu;
 struct dce_hwseq *hws = dc->hwseq;
 struct dc_bios *dcb = dc->ctx->dc_bios;
 struct resource_pool *res_pool = dc->res_pool;

 if (dc->clk_mgr && dc->clk_mgr->funcs->init_clocks)
  dc->clk_mgr->funcs->init_clocks(dc->clk_mgr);


 if (dc->res_pool->dccg && dc->res_pool->dccg->funcs->dccg_init)
  dc->res_pool->dccg->funcs->dccg_init(res_pool->dccg);

 if (IS_FPGA_MAXIMUS_DC(dc->ctx->dce_environment)) {

  REG_WRITE(REFCLK_CNTL, 0);
  REG_UPDATE(DCHUBBUB_GLOBAL_TIMER_CNTL, DCHUBBUB_GLOBAL_TIMER_ENABLE, 1);
  REG_WRITE(DIO_MEM_PWR_CTRL, 0);

  if (!dc->debug.disable_clock_gate) {

   REG_WRITE(DCCG_GATE_DISABLE_CNTL, 0);

   REG_WRITE(DCCG_GATE_DISABLE_CNTL2, 0);

   REG_UPDATE(DCFCLK_CNTL, DCFCLK_GATE_DIS, 0);
  }


  dc->hwss.enable_power_gating_plane(hws, 1);

  return;
 }

 if (!dcb->funcs->is_accelerated_mode(dcb))
  dc->hwss.disable_vga(dc->hwseq);

 dc->hwss.bios_golden_init(dc);
 if (dc->ctx->dc_bios->fw_info_valid) {
  res_pool->ref_clocks.xtalin_clock_inKhz =
    dc->ctx->dc_bios->fw_info.pll_info.crystal_frequency;

  if (!IS_FPGA_MAXIMUS_DC(dc->ctx->dce_environment)) {
   if (res_pool->dccg && res_pool->hubbub) {

    (res_pool->dccg->funcs->get_dccg_ref_freq)(res_pool->dccg,
      dc->ctx->dc_bios->fw_info.pll_info.crystal_frequency,
      &res_pool->ref_clocks.dccg_ref_clock_inKhz);

    (res_pool->hubbub->funcs->get_dchub_ref_freq)(res_pool->hubbub,
      res_pool->ref_clocks.dccg_ref_clock_inKhz,
      &res_pool->ref_clocks.dchub_ref_clock_inKhz);
   } else {

    res_pool->ref_clocks.dccg_ref_clock_inKhz =
      res_pool->ref_clocks.xtalin_clock_inKhz;
    res_pool->ref_clocks.dchub_ref_clock_inKhz =
      res_pool->ref_clocks.xtalin_clock_inKhz;
   }
  }
 } else
  ASSERT_CRITICAL(0);

 for (i = 0; i < dc->link_count; i++) {




  struct dc_link *link = dc->links[i];

  link->link_enc->funcs->hw_init(link->link_enc);


  if (link->link_enc->funcs->is_dig_enabled &&
   link->link_enc->funcs->is_dig_enabled(link->link_enc))
   link->link_status.link_active = 1;
 }
 if (dcb->funcs->is_accelerated_mode(dcb) || dc->config.power_down_display_on_boot) {
  dc->hwss.init_pipes(dc, dc->current_state);
 }

 for (i = 0; i < res_pool->audio_count; i++) {
  struct audio *audio = res_pool->audios[i];

  audio->funcs->hw_init(audio);
 }

 if (abm != ((void*)0)) {
  abm->funcs->init_backlight(abm);
  abm->funcs->abm_init(abm);
 }

 if (dmcu != ((void*)0))
  dmcu->funcs->dmcu_init(dmcu);

 if (abm != ((void*)0) && dmcu != ((void*)0))
  abm->dmcu_is_running = dmcu->funcs->is_dmcu_initialized(dmcu);


 REG_WRITE(DIO_MEM_PWR_CTRL, 0);

 if (!dc->debug.disable_clock_gate) {

  REG_WRITE(DCCG_GATE_DISABLE_CNTL, 0);

  REG_WRITE(DCCG_GATE_DISABLE_CNTL2, 0);

  REG_UPDATE(DCFCLK_CNTL, DCFCLK_GATE_DIS, 0);
 }

 dc->hwss.enable_power_gating_plane(dc->hwseq, 1);
}
