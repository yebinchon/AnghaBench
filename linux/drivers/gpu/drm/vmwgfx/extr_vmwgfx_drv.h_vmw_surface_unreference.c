
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int dummy; } ;
struct vmw_surface {struct vmw_resource res; } ;


 int vmw_resource_unreference (struct vmw_resource**) ;

__attribute__((used)) static inline void vmw_surface_unreference(struct vmw_surface **srf)
{
 struct vmw_surface *tmp_srf = *srf;
 struct vmw_resource *res = &tmp_srf->res;
 *srf = ((void*)0);

 vmw_resource_unreference(&res);
}
