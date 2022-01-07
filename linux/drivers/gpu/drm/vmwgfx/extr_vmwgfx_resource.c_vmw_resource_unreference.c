
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int kref; } ;


 int kref_put (int *,int ) ;
 int vmw_resource_release ;

void vmw_resource_unreference(struct vmw_resource **p_res)
{
 struct vmw_resource *res = *p_res;

 *p_res = ((void*)0);
 kref_put(&res->kref, vmw_resource_release);
}
