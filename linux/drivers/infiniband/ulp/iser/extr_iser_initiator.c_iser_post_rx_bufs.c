
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_conn {int post_recv_buf_count; } ;
struct iser_conn {int min_posted_rx; struct ib_conn ib_conn; } ;
struct iscsi_session {scalar_t__ discovery_sess; } ;
struct iscsi_hdr {int flags; int opcode; } ;
struct iscsi_conn {struct iscsi_session* session; struct iser_conn* dd_data; } ;


 int ENOMEM ;
 int ISCSI_FULL_FEATURE_PHASE ;
 int WARN_ON (int) ;
 int iser_dbg (char*,int ,int) ;
 int iser_info (char*,...) ;
 scalar_t__ iser_post_recvm (struct iser_conn*,int ) ;

__attribute__((used)) static int iser_post_rx_bufs(struct iscsi_conn *conn, struct iscsi_hdr *req)
{
 struct iser_conn *iser_conn = conn->dd_data;
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 struct iscsi_session *session = conn->session;

 iser_dbg("req op %x flags %x\n", req->opcode, req->flags);

 if ((req->flags & ISCSI_FULL_FEATURE_PHASE) != ISCSI_FULL_FEATURE_PHASE)
  return 0;





 WARN_ON(ib_conn->post_recv_buf_count != 1);

 if (session->discovery_sess) {
  iser_info("Discovery session, re-using login RX buffer\n");
  return 0;
 } else
  iser_info("Normal session, posting batch of RX %d buffers\n",
     iser_conn->min_posted_rx);


 if (iser_post_recvm(iser_conn, iser_conn->min_posted_rx))
  return -ENOMEM;

 return 0;
}
