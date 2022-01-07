
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __be32 ;
struct TYPE_2__ {int local_id_table; } ;


 TYPE_1__ cm ;
 int cm_local_id (int ) ;
 int xa_erase_irq (int *,int ) ;

__attribute__((used)) static void cm_free_id(__be32 local_id)
{
 xa_erase_irq(&cm.local_id_table, cm_local_id(local_id));
}
