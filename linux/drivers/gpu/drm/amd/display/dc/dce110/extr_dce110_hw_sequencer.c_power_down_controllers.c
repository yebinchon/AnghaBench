
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dc {TYPE_2__* res_pool; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {int timing_generator_count; TYPE_3__** timing_generators; } ;
struct TYPE_4__ {int (* disable_crtc ) (TYPE_3__*) ;} ;


 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void power_down_controllers(struct dc *dc)
{
 int i;

 for (i = 0; i < dc->res_pool->timing_generator_count; i++) {
  dc->res_pool->timing_generators[i]->funcs->disable_crtc(
    dc->res_pool->timing_generators[i]);
 }
}
