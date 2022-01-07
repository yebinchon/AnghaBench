
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {int dummy; } ;
struct TYPE_2__ {struct vmw_resource* srf; } ;


 TYPE_1__* vmw_view (struct vmw_resource*) ;

struct vmw_resource *vmw_view_srf(struct vmw_resource *res)
{
 return vmw_view(res)->srf;
}
