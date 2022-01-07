
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rdma_cm_id {struct sockaddr* context; } ;
struct isert_np {struct iscsi_np* np; } ;
struct iscsi_np {struct rdma_cm_id np_sockaddr; } ;


 struct rdma_cm_id* ERR_PTR (int) ;
 int IB_QPT_RC ;
 scalar_t__ IS_ERR (struct rdma_cm_id*) ;
 int PTR_ERR (struct rdma_cm_id*) ;
 int RDMA_PS_TCP ;
 int init_net ;
 int isert_cma_handler ;
 int isert_dbg (char*,struct rdma_cm_id*,struct sockaddr*) ;
 int isert_err (char*,int) ;
 int rdma_bind_addr (struct rdma_cm_id*,struct sockaddr*) ;
 struct rdma_cm_id* rdma_create_id (int *,int ,struct isert_np*,int ,int ) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_listen (struct rdma_cm_id*,int ) ;

struct rdma_cm_id *
isert_setup_id(struct isert_np *isert_np)
{
 struct iscsi_np *np = isert_np->np;
 struct rdma_cm_id *id;
 struct sockaddr *sa;
 int ret;

 sa = (struct sockaddr *)&np->np_sockaddr;
 isert_dbg("ksockaddr: %p, sa: %p\n", &np->np_sockaddr, sa);

 id = rdma_create_id(&init_net, isert_cma_handler, isert_np,
       RDMA_PS_TCP, IB_QPT_RC);
 if (IS_ERR(id)) {
  isert_err("rdma_create_id() failed: %ld\n", PTR_ERR(id));
  ret = PTR_ERR(id);
  goto out;
 }
 isert_dbg("id %p context %p\n", id, id->context);

 ret = rdma_bind_addr(id, sa);
 if (ret) {
  isert_err("rdma_bind_addr() failed: %d\n", ret);
  goto out_id;
 }

 ret = rdma_listen(id, 0);
 if (ret) {
  isert_err("rdma_listen() failed: %d\n", ret);
  goto out_id;
 }

 return id;
out_id:
 rdma_destroy_id(id);
out:
 return ERR_PTR(ret);
}
