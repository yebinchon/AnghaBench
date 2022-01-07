
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_conn {scalar_t__ iscsi_conn; } ;
struct ib_wc {scalar_t__ status; int vendor_err; TYPE_1__* qp; } ;
struct TYPE_2__ {int qp_context; } ;


 scalar_t__ IB_WC_WR_FLUSH_ERR ;
 int ISCSI_ERR_CONN_FAILED ;
 int ib_wc_status_msg (scalar_t__) ;
 int iscsi_conn_failure (scalar_t__,int ) ;
 int iser_dbg (char*,char const*,int ,scalar_t__) ;
 int iser_err (char*,char const*,int ,scalar_t__,int ) ;
 struct iser_conn* to_iser_conn (int ) ;

void iser_err_comp(struct ib_wc *wc, const char *type)
{
 if (wc->status != IB_WC_WR_FLUSH_ERR) {
  struct iser_conn *iser_conn = to_iser_conn(wc->qp->qp_context);

  iser_err("%s failure: %s (%d) vend_err %#x\n", type,
    ib_wc_status_msg(wc->status), wc->status,
    wc->vendor_err);

  if (iser_conn->iscsi_conn)
   iscsi_conn_failure(iser_conn->iscsi_conn,
        ISCSI_ERR_CONN_FAILED);
 } else {
  iser_dbg("%s failure: %s (%d)\n", type,
    ib_wc_status_msg(wc->status), wc->status);
 }
}
