
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_user_context {int cotable_lock; struct vmw_resource** cotables; } ;
struct vmw_resource {int dummy; } ;


 int SVGA_COTABLE_DX10_MAX ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmw_resource_unreference (struct vmw_resource**) ;

__attribute__((used)) static void vmw_context_cotables_unref(struct vmw_user_context *uctx)
{
 struct vmw_resource *res;
 int i;

 for (i = 0; i < SVGA_COTABLE_DX10_MAX; ++i) {
  spin_lock(&uctx->cotable_lock);
  res = uctx->cotables[i];
  uctx->cotables[i] = ((void*)0);
  spin_unlock(&uctx->cotable_lock);

  if (res)
   vmw_resource_unreference(&res);
 }
}
