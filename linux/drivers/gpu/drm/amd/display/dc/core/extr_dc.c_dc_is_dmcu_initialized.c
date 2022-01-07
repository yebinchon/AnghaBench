
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dmcu {TYPE_2__* funcs; } ;
struct dc {TYPE_1__* res_pool; } ;
struct TYPE_4__ {int (* is_dmcu_initialized ) (struct dmcu*) ;} ;
struct TYPE_3__ {struct dmcu* dmcu; } ;


 int stub1 (struct dmcu*) ;

bool dc_is_dmcu_initialized(struct dc *dc)
{
 struct dmcu *dmcu = dc->res_pool->dmcu;

 if (dmcu)
  return dmcu->funcs->is_dmcu_initialized(dmcu);
 return 0;
}
