
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dc {TYPE_3__* res_pool; } ;
struct TYPE_10__ {TYPE_2__* funcs; } ;
struct TYPE_9__ {TYPE_1__* funcs; } ;
struct TYPE_8__ {int clk_src_count; TYPE_4__** clock_sources; TYPE_5__* dp_clock_source; } ;
struct TYPE_7__ {int (* cs_power_down ) (TYPE_5__*) ;} ;
struct TYPE_6__ {int (* cs_power_down ) (TYPE_4__*) ;} ;


 int dm_error (char*,...) ;
 int stub1 (TYPE_5__*) ;
 int stub2 (TYPE_4__*) ;

__attribute__((used)) static void power_down_clock_sources(struct dc *dc)
{
 int i;

 if (dc->res_pool->dp_clock_source->funcs->cs_power_down(
  dc->res_pool->dp_clock_source) == 0)
  dm_error("Failed to power down pll! (dp clk src)\n");

 for (i = 0; i < dc->res_pool->clk_src_count; i++) {
  if (dc->res_pool->clock_sources[i]->funcs->cs_power_down(
    dc->res_pool->clock_sources[i]) == 0)
   dm_error("Failed to power down pll! (clk src index=%d)\n", i);
 }
}
