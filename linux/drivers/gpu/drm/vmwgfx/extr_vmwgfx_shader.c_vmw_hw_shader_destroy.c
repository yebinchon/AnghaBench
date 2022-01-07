
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {int id; TYPE_1__* func; } ;
struct TYPE_2__ {int (* destroy ) (struct vmw_resource*) ;} ;


 scalar_t__ likely (int (*) (struct vmw_resource*)) ;
 int stub1 (struct vmw_resource*) ;

__attribute__((used)) static void vmw_hw_shader_destroy(struct vmw_resource *res)
{
 if (likely(res->func->destroy))
  (void) res->func->destroy(res);
 else
  res->id = -1;
}
