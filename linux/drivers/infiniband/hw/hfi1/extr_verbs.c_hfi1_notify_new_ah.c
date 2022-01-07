
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdma_ah_attr {int dummy; } ;
struct rvt_ah {int vl; int log_pmtu; struct rdma_ah_attr attr; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibport {int * sl_to_sc; } ;
struct hfi1_devdata {TYPE_1__* vld; } ;
struct TYPE_2__ {int mtu; } ;


 struct hfi1_devdata* dd_from_ppd (struct hfi1_pportdata*) ;
 int hfi1_make_opa_lid (struct rdma_ah_attr*) ;
 int hfi1_update_ah_attr (struct ib_device*,struct rdma_ah_attr*) ;
 int ilog2 (int ) ;
 int num_vls ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int rdma_ah_get_port_num (struct rdma_ah_attr*) ;
 size_t rdma_ah_get_sl (struct rdma_ah_attr*) ;
 int sc_to_vlt (struct hfi1_devdata*,int ) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static void hfi1_notify_new_ah(struct ib_device *ibdev,
          struct rdma_ah_attr *ah_attr,
          struct rvt_ah *ah)
{
 struct hfi1_ibport *ibp;
 struct hfi1_pportdata *ppd;
 struct hfi1_devdata *dd;
 u8 sc5;
 struct rdma_ah_attr *attr = &ah->attr;






 ibp = to_iport(ibdev, rdma_ah_get_port_num(ah_attr));
 ppd = ppd_from_ibp(ibp);
 sc5 = ibp->sl_to_sc[rdma_ah_get_sl(&ah->attr)];
 hfi1_update_ah_attr(ibdev, attr);
 hfi1_make_opa_lid(attr);
 dd = dd_from_ppd(ppd);
 ah->vl = sc_to_vlt(dd, sc5);
 if (ah->vl < num_vls || ah->vl == 15)
  ah->log_pmtu = ilog2(dd->vld[ah->vl].mtu);
}
