
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvrdma_id_table {int table; } ;
struct TYPE_2__ {struct pvrdma_id_table tbl; } ;
struct pvrdma_dev {TYPE_1__ uar_table; } ;


 int kfree (int ) ;

void pvrdma_uar_table_cleanup(struct pvrdma_dev *dev)
{
 struct pvrdma_id_table *tbl = &dev->uar_table.tbl;

 kfree(tbl->table);
}
