
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rvt_sge_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ qp_type; int device; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct qib_devdata {int flags; } ;
struct ib_header {int dummy; } ;


 scalar_t__ IB_QPT_SMI ;
 int QIB_HAS_SEND_DMA ;
 struct qib_devdata* dd_from_ibdev (int ) ;
 int qib_verbs_send_dma (struct rvt_qp*,struct ib_header*,int,struct rvt_sge_state*,int,int,int) ;
 int qib_verbs_send_pio (struct rvt_qp*,struct ib_header*,int,struct rvt_sge_state*,int,int,int) ;

int qib_verbs_send(struct rvt_qp *qp, struct ib_header *hdr,
     u32 hdrwords, struct rvt_sge_state *ss, u32 len)
{
 struct qib_devdata *dd = dd_from_ibdev(qp->ibqp.device);
 u32 plen;
 int ret;
 u32 dwords = (len + 3) >> 2;





 plen = hdrwords + dwords + 1;






 if (qp->ibqp.qp_type == IB_QPT_SMI ||
     !(dd->flags & QIB_HAS_SEND_DMA))
  ret = qib_verbs_send_pio(qp, hdr, hdrwords, ss, len,
      plen, dwords);
 else
  ret = qib_verbs_send_dma(qp, hdr, hdrwords, ss, len,
      plen, dwords);

 return ret;
}
