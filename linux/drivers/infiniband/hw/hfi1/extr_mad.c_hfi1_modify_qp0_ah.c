
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rvt_qp {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct rvt_ah {TYPE_2__ ibah; } ;
struct rdma_ah_attr {int type; } ;
struct TYPE_3__ {int * qp; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;
typedef int attr ;


 int EINVAL ;
 int hfi1_update_sm_ah_attr (struct hfi1_ibport*,struct rdma_ah_attr*,int ) ;
 int memset (struct rdma_ah_attr*,int ,int) ;
 struct rvt_qp* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdma_modify_ah (TYPE_2__*,struct rdma_ah_attr*) ;

__attribute__((used)) static int hfi1_modify_qp0_ah(struct hfi1_ibport *ibp,
         struct rvt_ah *ah, u32 dlid)
{
 struct rdma_ah_attr attr;
 struct rvt_qp *qp0;
 int ret = -EINVAL;

 memset(&attr, 0, sizeof(attr));
 attr.type = ah->ibah.type;
 hfi1_update_sm_ah_attr(ibp, &attr, dlid);
 rcu_read_lock();
 qp0 = rcu_dereference(ibp->rvp.qp[0]);
 if (qp0)
  ret = rdma_modify_ah(&ah->ibah, &attr);
 rcu_read_unlock();
 return ret;
}
