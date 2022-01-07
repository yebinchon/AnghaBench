
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ocrdma_dev {int dummy; } ;
struct TYPE_2__ {int rxlen_pkey; } ;
struct ocrdma_cqe {TYPE_1__ ud; int flags_status_srcqpn; } ;
struct ib_wc {int src_qp; int byte_len; int network_hdr_type; int wc_flags; scalar_t__ pkey_index; } ;


 int IB_WC_GRH ;
 int IB_WC_WITH_NETWORK_HDR_TYPE ;
 int OCRDMA_CQE_SRCQP_MASK ;
 int OCRDMA_CQE_UD_L3TYPE_MASK ;
 int OCRDMA_CQE_UD_L3TYPE_SHIFT ;
 int OCRDMA_CQE_UD_STATUS_MASK ;
 int OCRDMA_CQE_UD_STATUS_SHIFT ;
 int OCRDMA_CQE_UD_XFER_LEN_MASK ;
 int OCRDMA_CQE_UD_XFER_LEN_SHIFT ;
 int le32_to_cpu (int ) ;
 scalar_t__ ocrdma_is_udp_encap_supported (struct ocrdma_dev*) ;

__attribute__((used)) static int ocrdma_update_ud_rcqe(struct ocrdma_dev *dev, struct ib_wc *ibwc,
     struct ocrdma_cqe *cqe)
{
 int status;
 u16 hdr_type = 0;

 status = (le32_to_cpu(cqe->flags_status_srcqpn) &
  OCRDMA_CQE_UD_STATUS_MASK) >> OCRDMA_CQE_UD_STATUS_SHIFT;
 ibwc->src_qp = le32_to_cpu(cqe->flags_status_srcqpn) &
      OCRDMA_CQE_SRCQP_MASK;
 ibwc->pkey_index = 0;
 ibwc->wc_flags = IB_WC_GRH;
 ibwc->byte_len = (le32_to_cpu(cqe->ud.rxlen_pkey) >>
     OCRDMA_CQE_UD_XFER_LEN_SHIFT) &
     OCRDMA_CQE_UD_XFER_LEN_MASK;

 if (ocrdma_is_udp_encap_supported(dev)) {
  hdr_type = (le32_to_cpu(cqe->ud.rxlen_pkey) >>
       OCRDMA_CQE_UD_L3TYPE_SHIFT) &
       OCRDMA_CQE_UD_L3TYPE_MASK;
  ibwc->wc_flags |= IB_WC_WITH_NETWORK_HDR_TYPE;
  ibwc->network_hdr_type = hdr_type;
 }

 return status;
}
