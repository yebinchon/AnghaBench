
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_rwq_ind_table {int dummy; } ;


 int kfree (struct ib_rwq_ind_table*) ;

int mlx4_ib_destroy_rwq_ind_table(struct ib_rwq_ind_table *ib_rwq_ind_tbl)
{
 kfree(ib_rwq_ind_tbl);
 return 0;
}
