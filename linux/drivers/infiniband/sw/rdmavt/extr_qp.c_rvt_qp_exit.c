
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rvt_dev_info {TYPE_1__* qp_dev; } ;
struct TYPE_2__ {int qpn_table; struct TYPE_2__* qp_table; } ;


 int free_qpn_table (int *) ;
 int kfree (TYPE_1__*) ;
 scalar_t__ rvt_free_all_qps (struct rvt_dev_info*) ;
 int rvt_pr_err (struct rvt_dev_info*,char*,scalar_t__) ;

void rvt_qp_exit(struct rvt_dev_info *rdi)
{
 u32 qps_inuse = rvt_free_all_qps(rdi);

 if (qps_inuse)
  rvt_pr_err(rdi, "QP memory leak! %u still in use\n",
      qps_inuse);
 if (!rdi->qp_dev)
  return;

 kfree(rdi->qp_dev->qp_table);
 free_qpn_table(&rdi->qp_dev->qpn_table);
 kfree(rdi->qp_dev);
}
