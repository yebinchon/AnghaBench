
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isert_conn {int qp; } ;
struct TYPE_2__ {int send_wr; } ;
struct isert_cmd {TYPE_1__ tx_desc; int rx_desc; } ;


 int ib_post_send (int ,int *,int *) ;
 int isert_err (char*,int) ;
 int isert_post_recv (struct isert_conn*,int ) ;

__attribute__((used)) static int
isert_post_response(struct isert_conn *isert_conn, struct isert_cmd *isert_cmd)
{
 int ret;

 ret = isert_post_recv(isert_conn, isert_cmd->rx_desc);
 if (ret) {
  isert_err("ib_post_recv failed with %d\n", ret);
  return ret;
 }

 ret = ib_post_send(isert_conn->qp, &isert_cmd->tx_desc.send_wr, ((void*)0));
 if (ret) {
  isert_err("ib_post_send failed with %d\n", ret);
  return ret;
 }
 return ret;
}
