
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int pipe_count; unsigned int stream_enc_count; unsigned int clk_src_count; unsigned int audio_count; int * irqs; int ** audios; int * dp_clock_source; int * dmcu; int * abm; int ** clock_sources; int ** stream_enc; int ** sw_i2cs; int ** hw_i2cs; int ** engines; TYPE_1__* res_cap; int ** timing_generators; int ** mis; int ** ipps; int ** transforms; int ** opps; } ;
struct dce110_resource_pool {TYPE_2__ base; } ;
struct TYPE_3__ {unsigned int num_ddc; } ;


 int * DCE110STRENC_FROM_STRENC (int *) ;
 int * DCE110TG_FROM_TG (int *) ;
 int * TO_DCE_MEM_INPUT (int *) ;
 int dal_irq_service_destroy (int **) ;
 int dce110_engine_destroy (int **) ;
 int dce110_opp_destroy (int **) ;
 int dce80_clock_source_destroy (int **) ;
 int dce80_transform_destroy (int **) ;
 int dce_abm_destroy (int **) ;
 int dce_aud_destroy (int **) ;
 int dce_dmcu_destroy (int **) ;
 int dce_ipp_destroy (int **) ;
 int kfree (int *) ;

__attribute__((used)) static void destruct(struct dce110_resource_pool *pool)
{
 unsigned int i;

 for (i = 0; i < pool->base.pipe_count; i++) {
  if (pool->base.opps[i] != ((void*)0))
   dce110_opp_destroy(&pool->base.opps[i]);

  if (pool->base.transforms[i] != ((void*)0))
   dce80_transform_destroy(&pool->base.transforms[i]);

  if (pool->base.ipps[i] != ((void*)0))
   dce_ipp_destroy(&pool->base.ipps[i]);

  if (pool->base.mis[i] != ((void*)0)) {
   kfree(TO_DCE_MEM_INPUT(pool->base.mis[i]));
   pool->base.mis[i] = ((void*)0);
  }

  if (pool->base.timing_generators[i] != ((void*)0)) {
   kfree(DCE110TG_FROM_TG(pool->base.timing_generators[i]));
   pool->base.timing_generators[i] = ((void*)0);
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

 for (i = 0; i < pool->base.stream_enc_count; i++) {
  if (pool->base.stream_enc[i] != ((void*)0))
   kfree(DCE110STRENC_FROM_STRENC(pool->base.stream_enc[i]));
 }

 for (i = 0; i < pool->base.clk_src_count; i++) {
  if (pool->base.clock_sources[i] != ((void*)0)) {
   dce80_clock_source_destroy(&pool->base.clock_sources[i]);
  }
 }

 if (pool->base.abm != ((void*)0))
   dce_abm_destroy(&pool->base.abm);

 if (pool->base.dmcu != ((void*)0))
   dce_dmcu_destroy(&pool->base.dmcu);

 if (pool->base.dp_clock_source != ((void*)0))
  dce80_clock_source_destroy(&pool->base.dp_clock_source);

 for (i = 0; i < pool->base.audio_count; i++) {
  if (pool->base.audios[i] != ((void*)0)) {
   dce_aud_destroy(&pool->base.audios[i]);
  }
 }

 if (pool->base.irqs != ((void*)0)) {
  dal_irq_service_destroy(&pool->base.irqs);
 }
}
