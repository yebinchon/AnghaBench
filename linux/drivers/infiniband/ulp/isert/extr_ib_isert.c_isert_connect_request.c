
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {int device; struct isert_np* context; } ;
struct TYPE_2__ {int conn; } ;
struct rdma_cm_event {TYPE_1__ param; } ;
struct isert_np {int mutex; int accepted; struct iscsi_np* np; } ;
struct isert_device {int dummy; } ;
struct isert_conn {int node; struct isert_device* device; struct rdma_cm_id* cm_id; } ;
struct iscsi_np {int np_thread_lock; int enabled; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct isert_device*) ;
 int PTR_ERR (struct isert_device*) ;
 int isert_alloc_login_buf (struct isert_conn*,int ) ;
 int isert_conn_setup_qp (struct isert_conn*,struct rdma_cm_id*) ;
 int isert_dbg (char*,...) ;
 struct isert_device* isert_device_get (struct rdma_cm_id*) ;
 int isert_device_put (struct isert_device*) ;
 int isert_free_login_buf (struct isert_conn*) ;
 int isert_init_conn (struct isert_conn*) ;
 int isert_login_post_recv (struct isert_conn*) ;
 int isert_rdma_accept (struct isert_conn*) ;
 int isert_set_nego_params (struct isert_conn*,int *) ;
 int kfree (struct isert_conn*) ;
 struct isert_conn* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_reject (struct rdma_cm_id*,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
isert_connect_request(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
 struct isert_np *isert_np = cma_id->context;
 struct iscsi_np *np = isert_np->np;
 struct isert_conn *isert_conn;
 struct isert_device *device;
 int ret = 0;

 spin_lock_bh(&np->np_thread_lock);
 if (!np->enabled) {
  spin_unlock_bh(&np->np_thread_lock);
  isert_dbg("iscsi_np is not enabled, reject connect request\n");
  return rdma_reject(cma_id, ((void*)0), 0);
 }
 spin_unlock_bh(&np->np_thread_lock);

 isert_dbg("cma_id: %p, portal: %p\n",
   cma_id, cma_id->context);

 isert_conn = kzalloc(sizeof(struct isert_conn), GFP_KERNEL);
 if (!isert_conn)
  return -ENOMEM;

 isert_init_conn(isert_conn);
 isert_conn->cm_id = cma_id;

 ret = isert_alloc_login_buf(isert_conn, cma_id->device);
 if (ret)
  goto out;

 device = isert_device_get(cma_id);
 if (IS_ERR(device)) {
  ret = PTR_ERR(device);
  goto out_rsp_dma_map;
 }
 isert_conn->device = device;

 isert_set_nego_params(isert_conn, &event->param.conn);

 ret = isert_conn_setup_qp(isert_conn, cma_id);
 if (ret)
  goto out_conn_dev;

 ret = isert_login_post_recv(isert_conn);
 if (ret)
  goto out_conn_dev;

 ret = isert_rdma_accept(isert_conn);
 if (ret)
  goto out_conn_dev;

 mutex_lock(&isert_np->mutex);
 list_add_tail(&isert_conn->node, &isert_np->accepted);
 mutex_unlock(&isert_np->mutex);

 return 0;

out_conn_dev:
 isert_device_put(device);
out_rsp_dma_map:
 isert_free_login_buf(isert_conn);
out:
 kfree(isert_conn);
 rdma_reject(cma_id, ((void*)0), 0);
 return ret;
}
