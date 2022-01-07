
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct timing_generator {size_t inst; struct dc_context* ctx; } ;
struct optc {struct timing_generator base; int * tg_mask; int * tg_shift; int * tg_regs; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int dcn20_timing_generator_init (struct optc*) ;
 struct optc* kzalloc (int,int ) ;
 int tg_mask ;
 int * tg_regs ;
 int tg_shift ;

struct timing_generator *dcn20_timing_generator_create(
  struct dc_context *ctx,
  uint32_t instance)
{
 struct optc *tgn10 =
  kzalloc(sizeof(struct optc), GFP_KERNEL);

 if (!tgn10)
  return ((void*)0);

 tgn10->base.inst = instance;
 tgn10->base.ctx = ctx;

 tgn10->tg_regs = &tg_regs[instance];
 tgn10->tg_shift = &tg_shift;
 tgn10->tg_mask = &tg_mask;

 dcn20_timing_generator_init(tgn10);

 return &tgn10->base;
}
