
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc_state {int dummy; } ;
struct dc_clock_config {int dummy; } ;
struct dc {TYPE_2__* clk_mgr; struct dc_state* current_state; } ;
typedef enum dc_clock_type { ____Placeholder_dc_clock_type } dc_clock_type ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* get_clock ) (TYPE_2__*,struct dc_state*,int,struct dc_clock_config*) ;} ;


 int stub1 (TYPE_2__*,struct dc_state*,int,struct dc_clock_config*) ;

__attribute__((used)) static void dcn10_get_clock(struct dc *dc,
   enum dc_clock_type clock_type,
   struct dc_clock_config *clock_cfg)
{
 struct dc_state *context = dc->current_state;

 if (dc->clk_mgr && dc->clk_mgr->funcs->get_clock)
    dc->clk_mgr->funcs->get_clock(dc->clk_mgr, context, clock_type, clock_cfg);

}
