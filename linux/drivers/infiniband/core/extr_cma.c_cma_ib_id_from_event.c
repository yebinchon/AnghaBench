
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rdma_id_private {int flags; } ;
struct rdma_bind_list {int dummy; } ;
struct net_device {int flags; } ;
struct ib_cm_id {int dummy; } ;
struct ib_cm_event {int dummy; } ;
struct cma_req_info {int service_id; int src_addr_storage; int listen_addr_storage; } ;


 int EAFNOSUPPORT ;
 int EHOSTUNREACH ;
 struct rdma_id_private* ERR_CAST (struct rdma_id_private*) ;
 struct rdma_id_private* ERR_PTR (int) ;
 int IFF_UP ;
 scalar_t__ IS_ERR (struct rdma_id_private*) ;
 int PTR_ERR (struct rdma_id_private*) ;
 struct rdma_id_private* cma_find_listener (struct rdma_bind_list*,struct ib_cm_id*,struct ib_cm_event const*,struct cma_req_info*,struct rdma_id_private*) ;
 struct rdma_id_private* cma_get_net_dev (struct ib_cm_event const*,struct cma_req_info*) ;
 int cma_port_from_service_id (int ) ;
 struct rdma_bind_list* cma_ps_find (int *,int ,int ) ;
 int cma_save_req_info (struct ib_cm_event const*,struct cma_req_info*) ;
 int * dev_net (struct rdma_id_private*) ;
 int dev_put (struct rdma_id_private*) ;
 int init_net ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdma_ps_from_service_id (int ) ;
 int validate_net_dev (struct rdma_id_private*,struct sockaddr*,struct sockaddr*) ;

__attribute__((used)) static struct rdma_id_private *
cma_ib_id_from_event(struct ib_cm_id *cm_id,
       const struct ib_cm_event *ib_event,
       struct cma_req_info *req,
       struct net_device **net_dev)
{
 struct rdma_bind_list *bind_list;
 struct rdma_id_private *id_priv;
 int err;

 err = cma_save_req_info(ib_event, req);
 if (err)
  return ERR_PTR(err);

 *net_dev = cma_get_net_dev(ib_event, req);
 if (IS_ERR(*net_dev)) {
  if (PTR_ERR(*net_dev) == -EAFNOSUPPORT) {

   *net_dev = ((void*)0);
  } else {
   return ERR_CAST(*net_dev);
  }
 }
 rcu_read_lock();
 if (*net_dev) {






  if (((*net_dev)->flags & IFF_UP) == 0) {
   id_priv = ERR_PTR(-EHOSTUNREACH);
   goto err;
  }

  if (!validate_net_dev(*net_dev,
     (struct sockaddr *)&req->listen_addr_storage,
     (struct sockaddr *)&req->src_addr_storage)) {
   id_priv = ERR_PTR(-EHOSTUNREACH);
   goto err;
  }
 }

 bind_list = cma_ps_find(*net_dev ? dev_net(*net_dev) : &init_net,
    rdma_ps_from_service_id(req->service_id),
    cma_port_from_service_id(req->service_id));
 id_priv = cma_find_listener(bind_list, cm_id, ib_event, req, *net_dev);
err:
 rcu_read_unlock();
 if (IS_ERR(id_priv) && *net_dev) {
  dev_put(*net_dev);
  *net_dev = ((void*)0);
 }
 return id_priv;
}
