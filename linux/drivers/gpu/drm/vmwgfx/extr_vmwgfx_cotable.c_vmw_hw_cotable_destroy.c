
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int dummy; } ;


 int vmw_cotable_destroy (struct vmw_resource*) ;

__attribute__((used)) static void vmw_hw_cotable_destroy(struct vmw_resource *res)
{
 (void) vmw_cotable_destroy(res);
}
