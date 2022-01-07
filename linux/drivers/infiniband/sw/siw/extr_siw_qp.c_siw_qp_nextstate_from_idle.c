
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct siw_qp_attrs {int state; int flags; int sk; int orq_size; int irq_size; } ;
struct TYPE_6__ {int state; int irq_size; int orq_size; int sk; } ;
struct TYPE_5__ {int* ddp_msn; } ;
struct TYPE_4__ {int * ddp_msn; } ;
struct siw_qp {int * cep; TYPE_3__ attrs; TYPE_2__ rx_stream; TYPE_1__ tx_ctx; } ;
typedef enum siw_qp_attr_mask { ____Placeholder_siw_qp_attr_mask } siw_qp_attr_mask ;


 int EINVAL ;
 size_t RDMAP_UNTAGGED_QN_RDMA_READ ;
 size_t RDMAP_UNTAGGED_QN_SEND ;
 size_t RDMAP_UNTAGGED_QN_TERMINATE ;
 int SIW_MPA_CRC ;
 int SIW_QP_ATTR_LLP_HANDLE ;
 int SIW_QP_ATTR_MPA ;


 int siw_cep_put (int *) ;
 int siw_dbg_qp (struct siw_qp*,char*,...) ;
 int siw_qp_enable_crc (struct siw_qp*) ;
 int siw_qp_readq_init (struct siw_qp*,int ,int ) ;
 int siw_rq_flush (struct siw_qp*) ;

__attribute__((used)) static int siw_qp_nextstate_from_idle(struct siw_qp *qp,
          struct siw_qp_attrs *attrs,
          enum siw_qp_attr_mask mask)
{
 int rv = 0;

 switch (attrs->state) {
 case 128:
  if (attrs->flags & SIW_MPA_CRC) {
   rv = siw_qp_enable_crc(qp);
   if (rv)
    break;
  }
  if (!(mask & SIW_QP_ATTR_LLP_HANDLE)) {
   siw_dbg_qp(qp, "no socket\n");
   rv = -EINVAL;
   break;
  }
  if (!(mask & SIW_QP_ATTR_MPA)) {
   siw_dbg_qp(qp, "no MPA\n");
   rv = -EINVAL;
   break;
  }



  qp->tx_ctx.ddp_msn[RDMAP_UNTAGGED_QN_SEND] = 0;
  qp->tx_ctx.ddp_msn[RDMAP_UNTAGGED_QN_RDMA_READ] = 0;
  qp->tx_ctx.ddp_msn[RDMAP_UNTAGGED_QN_TERMINATE] = 0;




  qp->rx_stream.ddp_msn[RDMAP_UNTAGGED_QN_SEND] = 1;
  qp->rx_stream.ddp_msn[RDMAP_UNTAGGED_QN_RDMA_READ] = 1;
  qp->rx_stream.ddp_msn[RDMAP_UNTAGGED_QN_TERMINATE] = 1;





  rv = siw_qp_readq_init(qp, attrs->irq_size,
           attrs->orq_size);
  if (rv)
   break;

  qp->attrs.sk = attrs->sk;
  qp->attrs.state = 128;

  siw_dbg_qp(qp, "enter RTS: crc=%s, ord=%u, ird=%u\n",
      attrs->flags & SIW_MPA_CRC ? "y" : "n",
      qp->attrs.orq_size, qp->attrs.irq_size);
  break;

 case 129:
  siw_rq_flush(qp);
  qp->attrs.state = 129;
  if (qp->cep) {
   siw_cep_put(qp->cep);
   qp->cep = ((void*)0);
  }
  break;

 default:
  break;
 }
 return rv;
}
