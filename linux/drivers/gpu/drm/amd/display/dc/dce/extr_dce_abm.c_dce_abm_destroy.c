
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dmcu_is_running; TYPE_1__* funcs; } ;
struct dce_abm {TYPE_2__ base; } ;
struct abm {int dummy; } ;
struct TYPE_3__ {int (* set_abm_immediate_disable ) (struct abm*) ;} ;


 struct dce_abm* TO_DCE_ABM (struct abm*) ;
 int kfree (struct dce_abm*) ;
 int stub1 (struct abm*) ;

void dce_abm_destroy(struct abm **abm)
{
 struct dce_abm *abm_dce = TO_DCE_ABM(*abm);

 if (abm_dce->base.dmcu_is_running == 1)
  abm_dce->base.funcs->set_abm_immediate_disable(*abm);

 kfree(abm_dce);
 *abm = ((void*)0);
}
