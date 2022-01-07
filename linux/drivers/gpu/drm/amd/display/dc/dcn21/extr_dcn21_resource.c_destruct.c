
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {unsigned int stream_enc_count; unsigned int pipe_count; unsigned int audio_count; unsigned int clk_src_count; int * pp_smu; int * dccg; int * dmcub; int * dmcu; int * abm; int * dp_clock_source; int ** clock_sources; scalar_t__* audios; int ** mcif_wb; int ** dwbc; TYPE_3__* res_cap; int ** timing_generators; TYPE_5__** opps; int ** sw_i2cs; int ** hw_i2cs; int ** engines; int * irqs; int ** hubps; TYPE_6__** ipps; int ** dpps; int * hubbub; int * mpc; int ** dscs; int ** stream_enc; } ;
struct dcn21_resource_pool {TYPE_4__ base; } ;
struct TYPE_12__ {TYPE_2__* funcs; } ;
struct TYPE_11__ {TYPE_1__* funcs; } ;
struct TYPE_9__ {unsigned int num_dsc; unsigned int num_ddc; unsigned int num_opp; unsigned int num_timing_generator; unsigned int num_dwb; } ;
struct TYPE_8__ {int (* ipp_destroy ) (TYPE_6__**) ;} ;
struct TYPE_7__ {int (* opp_destroy ) (TYPE_5__**) ;} ;


 int * DCN10STRENC_FROM_STRENC (int *) ;
 int * DCN10TG_FROM_TG (int *) ;
 int * TO_DCN20_DWBC (int *) ;
 int * TO_DCN20_HUBP (int *) ;
 int * TO_DCN20_MMHUBBUB (int *) ;
 int * TO_DCN20_MPC (int *) ;
 int dal_irq_service_destroy (int **) ;
 int dce110_engine_destroy (int **) ;
 int dce_abm_destroy (int **) ;
 int dce_aud_destroy (scalar_t__*) ;
 int dce_dmcu_destroy (int **) ;
 int dcn20_clock_source_destroy (int **) ;
 int dcn20_dpp_destroy (int **) ;
 int dcn20_dsc_destroy (int **) ;
 int dcn20_pp_smu_destroy (int **) ;
 int dcn21_dmcub_destroy (int **) ;
 int dcn_dccg_destroy (int **) ;
 int kfree (int *) ;
 int stub1 (TYPE_6__**) ;
 int stub2 (TYPE_5__**) ;

__attribute__((used)) static void destruct(struct dcn21_resource_pool *pool)
{
 unsigned int i;

 for (i = 0; i < pool->base.stream_enc_count; i++) {
  if (pool->base.stream_enc[i] != ((void*)0)) {
   kfree(DCN10STRENC_FROM_STRENC(pool->base.stream_enc[i]));
   pool->base.stream_enc[i] = ((void*)0);
  }
 }
 if (pool->base.mpc != ((void*)0)) {
  kfree(TO_DCN20_MPC(pool->base.mpc));
  pool->base.mpc = ((void*)0);
 }
 if (pool->base.hubbub != ((void*)0)) {
  kfree(pool->base.hubbub);
  pool->base.hubbub = ((void*)0);
 }
 for (i = 0; i < pool->base.pipe_count; i++) {
  if (pool->base.dpps[i] != ((void*)0))
   dcn20_dpp_destroy(&pool->base.dpps[i]);

  if (pool->base.ipps[i] != ((void*)0))
   pool->base.ipps[i]->funcs->ipp_destroy(&pool->base.ipps[i]);

  if (pool->base.hubps[i] != ((void*)0)) {
   kfree(TO_DCN20_HUBP(pool->base.hubps[i]));
   pool->base.hubps[i] = ((void*)0);
  }

  if (pool->base.irqs != ((void*)0)) {
   dal_irq_service_destroy(&pool->base.irqs);
  }
 }

 for (i = 0; i < pool->base.res_cap->num_ddc; i++) {
  if (pool->base.engines[i] != ((void*)0))
   dce110_engine_destroy(&pool->base.engines[i]);
  if (pool->base.hw_i2cs[i] != ((void*)0)) {
   kfree(pool->base.hw_i2cs[i]);
   pool->base.hw_i2cs[i] = ((void*)0);
  }
  if (pool->base.sw_i2cs[i] != ((void*)0)) {
   kfree(pool->base.sw_i2cs[i]);
   pool->base.sw_i2cs[i] = ((void*)0);
  }
 }

 for (i = 0; i < pool->base.res_cap->num_opp; i++) {
  if (pool->base.opps[i] != ((void*)0))
   pool->base.opps[i]->funcs->opp_destroy(&pool->base.opps[i]);
 }

 for (i = 0; i < pool->base.res_cap->num_timing_generator; i++) {
  if (pool->base.timing_generators[i] != ((void*)0)) {
   kfree(DCN10TG_FROM_TG(pool->base.timing_generators[i]));
   pool->base.timing_generators[i] = ((void*)0);
  }
 }

 for (i = 0; i < pool->base.res_cap->num_dwb; i++) {
  if (pool->base.dwbc[i] != ((void*)0)) {
   kfree(TO_DCN20_DWBC(pool->base.dwbc[i]));
   pool->base.dwbc[i] = ((void*)0);
  }
  if (pool->base.mcif_wb[i] != ((void*)0)) {
   kfree(TO_DCN20_MMHUBBUB(pool->base.mcif_wb[i]));
   pool->base.mcif_wb[i] = ((void*)0);
  }
 }

 for (i = 0; i < pool->base.audio_count; i++) {
  if (pool->base.audios[i])
   dce_aud_destroy(&pool->base.audios[i]);
 }

 for (i = 0; i < pool->base.clk_src_count; i++) {
  if (pool->base.clock_sources[i] != ((void*)0)) {
   dcn20_clock_source_destroy(&pool->base.clock_sources[i]);
   pool->base.clock_sources[i] = ((void*)0);
  }
 }

 if (pool->base.dp_clock_source != ((void*)0)) {
  dcn20_clock_source_destroy(&pool->base.dp_clock_source);
  pool->base.dp_clock_source = ((void*)0);
 }


 if (pool->base.abm != ((void*)0))
  dce_abm_destroy(&pool->base.abm);

 if (pool->base.dmcu != ((void*)0))
  dce_dmcu_destroy(&pool->base.dmcu);






 if (pool->base.dccg != ((void*)0))
  dcn_dccg_destroy(&pool->base.dccg);

 if (pool->base.pp_smu != ((void*)0))
  dcn20_pp_smu_destroy(&pool->base.pp_smu);
}
