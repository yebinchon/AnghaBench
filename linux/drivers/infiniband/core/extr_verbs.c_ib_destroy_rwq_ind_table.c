
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ib_wq {int usecnt; } ;
struct ib_rwq_ind_table {int log_ind_tbl_size; TYPE_2__* device; int usecnt; struct ib_wq** ind_tbl; } ;
struct TYPE_3__ {int (* destroy_rwq_ind_table ) (struct ib_rwq_ind_table*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EBUSY ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ib_rwq_ind_table*) ;

int ib_destroy_rwq_ind_table(struct ib_rwq_ind_table *rwq_ind_table)
{
 int err, i;
 u32 table_size = (1 << rwq_ind_table->log_ind_tbl_size);
 struct ib_wq **ind_tbl = rwq_ind_table->ind_tbl;

 if (atomic_read(&rwq_ind_table->usecnt))
  return -EBUSY;

 err = rwq_ind_table->device->ops.destroy_rwq_ind_table(rwq_ind_table);
 if (!err) {
  for (i = 0; i < table_size; i++)
   atomic_dec(&ind_tbl[i]->usecnt);
 }

 return err;
}
