
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct resource_pool {int ** mcif_wb; TYPE_1__* res_cap; } ;
struct dcn20_mmhubbub {int base; } ;
struct dc_context {int dummy; } ;
struct TYPE_2__ {int num_dwb; } ;


 int ASSERT (int) ;
 int GFP_KERNEL ;
 int dcn20_mmhubbub_construct (struct dcn20_mmhubbub*,struct dc_context*,int *,int *,int *,int) ;
 int dm_error (char*) ;
 struct dcn20_mmhubbub* kzalloc (int,int ) ;
 int mcif_wb20_mask ;
 int * mcif_wb20_regs ;
 int mcif_wb20_shift ;

bool dcn20_mmhubbub_create(struct dc_context *ctx, struct resource_pool *pool)
{
 int i;
 uint32_t pipe_count = pool->res_cap->num_dwb;

 ASSERT(pipe_count > 0);

 for (i = 0; i < pipe_count; i++) {
  struct dcn20_mmhubbub *mcif_wb20 = kzalloc(sizeof(struct dcn20_mmhubbub),
          GFP_KERNEL);

  if (!mcif_wb20) {
   dm_error("DC: failed to create mcif_wb20!\n");
   return 0;
  }

  dcn20_mmhubbub_construct(mcif_wb20, ctx,
    &mcif_wb20_regs[i],
    &mcif_wb20_shift,
    &mcif_wb20_mask,
    i);

  pool->mcif_wb[i] = &mcif_wb20->base;
 }
 return 1;
}
