
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct transform {TYPE_1__* funcs; } ;
struct timing_generator {TYPE_4__* funcs; } ;
struct dmcu {TYPE_8__* funcs; } ;
struct dc_link {TYPE_10__* link_enc; } ;
struct dc_bios {int dummy; } ;
struct TYPE_17__ {int (* enable_display_pipe_clock_gating ) (TYPE_11__*,int) ;int (* enable_display_power_gating ) (struct dc*,int,struct dc_bios*,int ) ;} ;
struct dc {int link_count; TYPE_12__* fbc_compressor; TYPE_7__* res_pool; struct dc_link** links; int hwseq; TYPE_11__* ctx; TYPE_2__ hwss; } ;
struct audio {TYPE_5__* funcs; } ;
struct abm {int dmcu_is_running; TYPE_6__* funcs; } ;
struct TYPE_24__ {int (* power_up_fbc ) (TYPE_12__*) ;} ;
struct TYPE_23__ {int (* is_dmcu_initialized ) (struct dmcu*) ;} ;
struct TYPE_22__ {int pipe_count; int audio_count; struct dmcu* dmcu; struct abm* abm; struct audio** audios; struct timing_generator** timing_generators; struct transform** transforms; } ;
struct TYPE_21__ {int (* abm_init ) (struct abm*) ;int (* init_backlight ) (struct abm*) ;} ;
struct TYPE_20__ {int (* hw_init ) (struct audio*) ;} ;
struct TYPE_19__ {int (* set_blank ) (struct timing_generator*,int) ;int (* disable_vga ) (struct timing_generator*) ;} ;
struct TYPE_18__ {int (* hw_init ) (TYPE_10__*) ;} ;
struct TYPE_16__ {int (* transform_reset ) (struct transform*) ;} ;
struct TYPE_15__ {TYPE_9__* funcs; } ;
struct TYPE_14__ {struct dc_bios* dc_bios; } ;
struct TYPE_13__ {TYPE_3__* funcs; } ;


 int PIPE_GATING_CONTROL_DISABLE ;
 int PIPE_GATING_CONTROL_INIT ;
 int dce_clock_gating_power_up (int ,int) ;
 int hwss_wait_for_blank_complete (struct timing_generator*) ;
 int stub1 (struct transform*) ;
 int stub10 (struct abm*) ;
 int stub11 (struct dmcu*) ;
 int stub12 (TYPE_12__*) ;
 int stub2 (struct dc*,int,struct dc_bios*,int ) ;
 int stub3 (struct dc*,int,struct dc_bios*,int ) ;
 int stub4 (TYPE_11__*,int) ;
 int stub5 (TYPE_10__*) ;
 int stub6 (struct timing_generator*) ;
 int stub7 (struct timing_generator*,int) ;
 int stub8 (struct audio*) ;
 int stub9 (struct abm*) ;

__attribute__((used)) static void init_hw(struct dc *dc)
{
 int i;
 struct dc_bios *bp;
 struct transform *xfm;
 struct abm *abm;
 struct dmcu *dmcu;

 bp = dc->ctx->dc_bios;
 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  xfm = dc->res_pool->transforms[i];
  xfm->funcs->transform_reset(xfm);

  dc->hwss.enable_display_power_gating(
    dc, i, bp,
    PIPE_GATING_CONTROL_INIT);
  dc->hwss.enable_display_power_gating(
    dc, i, bp,
    PIPE_GATING_CONTROL_DISABLE);
  dc->hwss.enable_display_pipe_clock_gating(
   dc->ctx,
   1);
 }

 dce_clock_gating_power_up(dc->hwseq, 0);


 for (i = 0; i < dc->link_count; i++) {




  struct dc_link *link = dc->links[i];

  link->link_enc->funcs->hw_init(link->link_enc);
 }

 for (i = 0; i < dc->res_pool->pipe_count; i++) {
  struct timing_generator *tg = dc->res_pool->timing_generators[i];

  tg->funcs->disable_vga(tg);



  tg->funcs->set_blank(tg, 1);
  hwss_wait_for_blank_complete(tg);
 }

 for (i = 0; i < dc->res_pool->audio_count; i++) {
  struct audio *audio = dc->res_pool->audios[i];
  audio->funcs->hw_init(audio);
 }

 abm = dc->res_pool->abm;
 if (abm != ((void*)0)) {
  abm->funcs->init_backlight(abm);
  abm->funcs->abm_init(abm);
 }

 dmcu = dc->res_pool->dmcu;
 if (dmcu != ((void*)0) && abm != ((void*)0))
  abm->dmcu_is_running = dmcu->funcs->is_dmcu_initialized(dmcu);

 if (dc->fbc_compressor)
  dc->fbc_compressor->funcs->power_up_fbc(dc->fbc_compressor);

}
