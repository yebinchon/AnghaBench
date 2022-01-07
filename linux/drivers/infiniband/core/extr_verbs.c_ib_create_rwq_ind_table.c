
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ib_rwq_ind_table_init_attr {int log_ind_tbl_size; TYPE_2__** ind_tbl; } ;
struct ib_rwq_ind_table {int log_ind_tbl_size; TYPE_2__** ind_tbl; int usecnt; int * uobject; struct ib_device* device; } ;
struct TYPE_3__ {struct ib_rwq_ind_table* (* create_rwq_ind_table ) (struct ib_device*,struct ib_rwq_ind_table_init_attr*,int *) ;} ;
struct ib_device {TYPE_1__ ops; } ;
struct TYPE_4__ {int usecnt; } ;


 int EOPNOTSUPP ;
 struct ib_rwq_ind_table* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct ib_rwq_ind_table*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 struct ib_rwq_ind_table* stub1 (struct ib_device*,struct ib_rwq_ind_table_init_attr*,int *) ;

struct ib_rwq_ind_table *ib_create_rwq_ind_table(struct ib_device *device,
       struct ib_rwq_ind_table_init_attr *init_attr)
{
 struct ib_rwq_ind_table *rwq_ind_table;
 int i;
 u32 table_size;

 if (!device->ops.create_rwq_ind_table)
  return ERR_PTR(-EOPNOTSUPP);

 table_size = (1 << init_attr->log_ind_tbl_size);
 rwq_ind_table = device->ops.create_rwq_ind_table(device,
        init_attr, ((void*)0));
 if (IS_ERR(rwq_ind_table))
  return rwq_ind_table;

 rwq_ind_table->ind_tbl = init_attr->ind_tbl;
 rwq_ind_table->log_ind_tbl_size = init_attr->log_ind_tbl_size;
 rwq_ind_table->device = device;
 rwq_ind_table->uobject = ((void*)0);
 atomic_set(&rwq_ind_table->usecnt, 0);

 for (i = 0; i < table_size; i++)
  atomic_inc(&rwq_ind_table->ind_tbl[i]->usecnt);

 return rwq_ind_table;
}
