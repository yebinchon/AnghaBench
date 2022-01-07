
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct ib_conn {int * cma_id; int * device; } ;
struct iser_conn {scalar_t__ state; int state_mutex; int conn_list; int up_completion; int name; struct ib_conn ib_conn; } ;
struct TYPE_2__ {int connlist_mutex; int connlist; } ;


 int EIO ;
 int IB_QPT_RC ;
 scalar_t__ ISER_CONN_DOWN ;
 scalar_t__ ISER_CONN_PENDING ;
 scalar_t__ ISER_CONN_UP ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int RDMA_PS_TCP ;
 TYPE_1__ ig ;
 int init_net ;
 int iser_cma_handler ;
 int iser_conn_release (struct iser_conn*) ;
 int iser_err (char*,int) ;
 int iser_info (char*,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * rdma_create_id (int *,int ,void*,int ,int ) ;
 int rdma_resolve_addr (int *,struct sockaddr*,struct sockaddr*,int) ;
 int sprintf (int ,char*,struct sockaddr*) ;
 int wait_for_completion_interruptible (int *) ;

int iser_connect(struct iser_conn *iser_conn,
   struct sockaddr *src_addr,
   struct sockaddr *dst_addr,
   int non_blocking)
{
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 int err = 0;

 mutex_lock(&iser_conn->state_mutex);

 sprintf(iser_conn->name, "%pISp", dst_addr);

 iser_info("connecting to: %s\n", iser_conn->name);


 ib_conn->device = ((void*)0);

 iser_conn->state = ISER_CONN_PENDING;

 ib_conn->cma_id = rdma_create_id(&init_net, iser_cma_handler,
      (void *)iser_conn,
      RDMA_PS_TCP, IB_QPT_RC);
 if (IS_ERR(ib_conn->cma_id)) {
  err = PTR_ERR(ib_conn->cma_id);
  iser_err("rdma_create_id failed: %d\n", err);
  goto id_failure;
 }

 err = rdma_resolve_addr(ib_conn->cma_id, src_addr, dst_addr, 1000);
 if (err) {
  iser_err("rdma_resolve_addr failed: %d\n", err);
  goto addr_failure;
 }

 if (!non_blocking) {
  wait_for_completion_interruptible(&iser_conn->up_completion);

  if (iser_conn->state != ISER_CONN_UP) {
   err = -EIO;
   goto connect_failure;
  }
 }
 mutex_unlock(&iser_conn->state_mutex);

 mutex_lock(&ig.connlist_mutex);
 list_add(&iser_conn->conn_list, &ig.connlist);
 mutex_unlock(&ig.connlist_mutex);
 return 0;

id_failure:
 ib_conn->cma_id = ((void*)0);
addr_failure:
 iser_conn->state = ISER_CONN_DOWN;
connect_failure:
 mutex_unlock(&iser_conn->state_mutex);
 iser_conn_release(iser_conn);
 return err;
}
