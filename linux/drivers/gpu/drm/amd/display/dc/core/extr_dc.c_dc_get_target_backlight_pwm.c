
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc {TYPE_1__* res_pool; } ;
struct abm {TYPE_2__* funcs; } ;
struct TYPE_4__ {unsigned int (* get_target_backlight ) (struct abm*) ;} ;
struct TYPE_3__ {struct abm* abm; } ;


 unsigned int stub1 (struct abm*) ;

unsigned int dc_get_target_backlight_pwm(struct dc *dc)
{
 struct abm *abm = dc->res_pool->abm;

 if (abm)
  return abm->funcs->get_target_backlight(abm);

 return 0;
}
