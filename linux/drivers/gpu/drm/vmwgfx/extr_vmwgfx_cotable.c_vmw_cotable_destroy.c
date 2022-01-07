
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int id; } ;



__attribute__((used)) static int vmw_cotable_destroy(struct vmw_resource *res)
{
 res->id = -1;
 return 0;
}
