
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_surface {int res; } ;


 int vmw_resource_reference (int *) ;

__attribute__((used)) static inline struct vmw_surface *vmw_surface_reference(struct vmw_surface *srf)
{
 (void) vmw_resource_reference(&srf->res);
 return srf;
}
