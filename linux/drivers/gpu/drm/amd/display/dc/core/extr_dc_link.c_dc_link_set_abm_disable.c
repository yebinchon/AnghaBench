
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dc_link {TYPE_1__* ctx; } ;
struct dc {TYPE_2__* res_pool; } ;
struct abm {TYPE_3__* funcs; } ;
struct TYPE_6__ {int (* set_abm_immediate_disable ) (struct abm*) ;int * set_backlight_level_pwm; } ;
struct TYPE_5__ {struct abm* abm; } ;
struct TYPE_4__ {struct dc* dc; } ;


 int stub1 (struct abm*) ;

bool dc_link_set_abm_disable(const struct dc_link *link)
{
 struct dc *core_dc = link->ctx->dc;
 struct abm *abm = core_dc->res_pool->abm;

 if ((abm == ((void*)0)) || (abm->funcs->set_backlight_level_pwm == ((void*)0)))
  return 0;

 abm->funcs->set_abm_immediate_disable(abm);

 return 1;
}
