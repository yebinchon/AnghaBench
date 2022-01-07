
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mpa_len; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;
struct siw_rx_stream {TYPE_2__ hdr; int fpdu_part_rem; } ;
struct siw_qp {struct siw_rx_stream rx_stream; } ;


 int EPROTO ;
 int be16_to_cpu (int ) ;
 int pr_warn (char*,int ,int ) ;
 int qp_id (struct siw_qp*) ;

int siw_proc_rreq(struct siw_qp *qp)
{
 struct siw_rx_stream *srx = &qp->rx_stream;

 if (!srx->fpdu_part_rem)
  return 0;

 pr_warn("siw: [QP %u]: rreq with mpa len %d\n", qp_id(qp),
  be16_to_cpu(srx->hdr.ctrl.mpa_len));

 return -EPROTO;
}
