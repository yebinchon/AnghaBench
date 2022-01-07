
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {TYPE_1__* func; } ;
struct TYPE_2__ {int needs_backup; } ;



bool vmw_resource_needs_backup(const struct vmw_resource *res)
{
 return res->func->needs_backup;
}
