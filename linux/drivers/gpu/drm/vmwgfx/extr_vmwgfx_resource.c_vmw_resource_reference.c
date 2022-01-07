
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int kref; } ;


 int kref_get (int *) ;

struct vmw_resource *vmw_resource_reference(struct vmw_resource *res)
{
 kref_get(&res->kref);
 return res;
}
