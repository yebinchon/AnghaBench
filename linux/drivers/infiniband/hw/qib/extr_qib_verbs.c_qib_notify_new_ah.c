
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_ah {int log_pmtu; int attr; int vl; } ;
struct rdma_ah_attr {int dummy; } ;
struct qib_pportdata {int ibmtu; } ;
struct qib_ibport {int * sl_to_vl; } ;
struct ib_device {int dummy; } ;


 int ilog2 (int ) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int rdma_ah_get_port_num (struct rdma_ah_attr*) ;
 size_t rdma_ah_get_sl (int *) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static void qib_notify_new_ah(struct ib_device *ibdev,
         struct rdma_ah_attr *ah_attr,
         struct rvt_ah *ah)
{
 struct qib_ibport *ibp;
 struct qib_pportdata *ppd;






 ibp = to_iport(ibdev, rdma_ah_get_port_num(ah_attr));
 ppd = ppd_from_ibp(ibp);
 ah->vl = ibp->sl_to_vl[rdma_ah_get_sl(&ah->attr)];
 ah->log_pmtu = ilog2(ppd->ibmtu);
}
