
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int kref; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

struct vmw_resource *
vmw_resource_reference_unless_doomed(struct vmw_resource *res)
{
 return kref_get_unless_zero(&res->kref) ? res : ((void*)0);
}
