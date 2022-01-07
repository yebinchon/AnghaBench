
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timing_generator {TYPE_1__* funcs; } ;
struct resource_pool {int timing_generator_count; struct timing_generator** timing_generators; } ;
struct dcn_otg_state {int otg_enabled; int member_0; } ;
struct dc {struct resource_pool* res_pool; } ;
struct TYPE_2__ {int (* clear_optc_underflow ) (struct timing_generator*) ;} ;


 int DCN10TG_FROM_TG (struct timing_generator*) ;
 int optc1_read_otg_state (int ,struct dcn_otg_state*) ;
 int stub1 (struct timing_generator*) ;

__attribute__((used)) static void dcn10_clear_otpc_underflow(struct dc *dc)
{
 struct resource_pool *pool = dc->res_pool;
 int i;

 for (i = 0; i < pool->timing_generator_count; i++) {
  struct timing_generator *tg = pool->timing_generators[i];
  struct dcn_otg_state s = {0};

  optc1_read_otg_state(DCN10TG_FROM_TG(tg), &s);

  if (s.otg_enabled & 1)
   tg->funcs->clear_optc_underflow(tg);
 }
}
