
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int qp_table_size; int node; } ;
struct TYPE_7__ {int notify_restart_rc; int notify_qp_reset; int qp_priv_free; int qp_priv_alloc; int free_all_qps; } ;
struct rvt_dev_info {TYPE_3__* qp_dev; int n_qps_lock; TYPE_2__ dparms; TYPE_1__ driver_f; } ;
struct TYPE_9__ {int qp_table_size; int qpn_table; struct TYPE_9__* qp_table; int qpt_lock; int qp_table_bits; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RCU_INIT_POINTER (TYPE_3__,int *) ;
 int free_qpn_table (int *) ;
 int ilog2 (int) ;
 scalar_t__ init_qpn_table (struct rvt_dev_info*,int *) ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kmalloc_array_node (int,int,int ,int ) ;
 TYPE_3__* kzalloc_node (int,int ,int ) ;
 int spin_lock_init (int *) ;

int rvt_driver_qp_init(struct rvt_dev_info *rdi)
{
 int i;
 int ret = -ENOMEM;

 if (!rdi->dparms.qp_table_size)
  return -EINVAL;





 if (!rdi->driver_f.free_all_qps ||
     !rdi->driver_f.qp_priv_alloc ||
     !rdi->driver_f.qp_priv_free ||
     !rdi->driver_f.notify_qp_reset ||
     !rdi->driver_f.notify_restart_rc)
  return -EINVAL;


 rdi->qp_dev = kzalloc_node(sizeof(*rdi->qp_dev), GFP_KERNEL,
       rdi->dparms.node);
 if (!rdi->qp_dev)
  return -ENOMEM;


 rdi->qp_dev->qp_table_size = rdi->dparms.qp_table_size;
 rdi->qp_dev->qp_table_bits = ilog2(rdi->dparms.qp_table_size);
 rdi->qp_dev->qp_table =
  kmalloc_array_node(rdi->qp_dev->qp_table_size,
        sizeof(*rdi->qp_dev->qp_table),
        GFP_KERNEL, rdi->dparms.node);
 if (!rdi->qp_dev->qp_table)
  goto no_qp_table;

 for (i = 0; i < rdi->qp_dev->qp_table_size; i++)
  RCU_INIT_POINTER(rdi->qp_dev->qp_table[i], ((void*)0));

 spin_lock_init(&rdi->qp_dev->qpt_lock);


 if (init_qpn_table(rdi, &rdi->qp_dev->qpn_table))
  goto fail_table;

 spin_lock_init(&rdi->n_qps_lock);

 return 0;

fail_table:
 kfree(rdi->qp_dev->qp_table);
 free_qpn_table(&rdi->qp_dev->qpn_table);

no_qp_table:
 kfree(rdi->qp_dev);

 return ret;
}
