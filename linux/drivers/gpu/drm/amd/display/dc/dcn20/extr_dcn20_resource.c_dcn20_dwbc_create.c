
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct resource_pool {int ** dwbc; TYPE_1__* res_cap; } ;
struct dcn20_dwbc {int base; } ;
struct dc_context {int dummy; } ;
struct TYPE_2__ {int num_dwb; } ;


 int ASSERT (int) ;
 int GFP_KERNEL ;
 int dcn20_dwbc_construct (struct dcn20_dwbc*,struct dc_context*,int *,int *,int *,int) ;
 int dm_error (char*) ;
 int dwbc20_mask ;
 int * dwbc20_regs ;
 int dwbc20_shift ;
 struct dcn20_dwbc* kzalloc (int,int ) ;

bool dcn20_dwbc_create(struct dc_context *ctx, struct resource_pool *pool)
{
 int i;
 uint32_t pipe_count = pool->res_cap->num_dwb;

 ASSERT(pipe_count > 0);

 for (i = 0; i < pipe_count; i++) {
  struct dcn20_dwbc *dwbc20 = kzalloc(sizeof(struct dcn20_dwbc),
          GFP_KERNEL);

  if (!dwbc20) {
   dm_error("DC: failed to create dwbc20!\n");
   return 0;
  }
  dcn20_dwbc_construct(dwbc20, ctx,
    &dwbc20_regs[i],
    &dwbc20_shift,
    &dwbc20_mask,
    i);
  pool->dwbc[i] = &dwbc20->base;
 }
 return 1;
}
