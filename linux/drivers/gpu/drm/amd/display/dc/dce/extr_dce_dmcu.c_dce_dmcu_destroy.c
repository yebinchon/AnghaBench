
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dmcu {int dummy; } ;
struct TYPE_4__ {scalar_t__ dmcu_state; TYPE_1__* funcs; } ;
struct dce_dmcu {TYPE_2__ base; } ;
struct TYPE_3__ {int (* set_psr_enable ) (struct dmcu*,int,int) ;} ;


 scalar_t__ DMCU_RUNNING ;
 struct dce_dmcu* TO_DCE_DMCU (struct dmcu*) ;
 int kfree (struct dce_dmcu*) ;
 int stub1 (struct dmcu*,int,int) ;

void dce_dmcu_destroy(struct dmcu **dmcu)
{
 struct dce_dmcu *dmcu_dce = TO_DCE_DMCU(*dmcu);

 if (dmcu_dce->base.dmcu_state == DMCU_RUNNING)
  dmcu_dce->base.funcs->set_psr_enable(*dmcu, 0, 1);

 kfree(dmcu_dce);
 *dmcu = ((void*)0);
}
