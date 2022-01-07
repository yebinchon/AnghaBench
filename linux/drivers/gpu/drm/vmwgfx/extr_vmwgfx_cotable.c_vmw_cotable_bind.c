
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {TYPE_1__* backup; } ;
struct ttm_validate_buffer {int * bo; } ;
struct TYPE_2__ {int base; } ;


 int vmw_cotable_unscrub (struct vmw_resource*) ;

__attribute__((used)) static int vmw_cotable_bind(struct vmw_resource *res,
       struct ttm_validate_buffer *val_buf)
{







 val_buf->bo = &res->backup->base;

 return vmw_cotable_unscrub(res);
}
