
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc {int hwseq; TYPE_2__* res_pool; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int (* destroy ) (TYPE_2__**) ;} ;


 int kfree (int ) ;
 int stub1 (TYPE_2__**) ;

void dc_destroy_resource_pool(struct dc *dc)
{
 if (dc) {
  if (dc->res_pool)
   dc->res_pool->funcs->destroy(&dc->res_pool);

  kfree(dc->hwseq);
 }
}
