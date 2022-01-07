
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rdma_cm_id {int dummy; } ;
typedef int addr_str ;


 struct rdma_cm_id* ERR_PTR (int) ;
 int IB_QPT_RC ;
 scalar_t__ IS_ERR (struct rdma_cm_id*) ;
 int PTR_ERR (struct rdma_cm_id*) ;
 int RDMA_PS_TCP ;
 int init_net ;
 int pr_err (char*,...) ;
 int rdma_bind_addr (struct rdma_cm_id*,struct sockaddr*) ;
 struct rdma_cm_id* rdma_create_id (int *,int ,int *,int ,int ) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_listen (struct rdma_cm_id*,int) ;
 int snprintf (char*,int,char*,struct sockaddr*) ;
 int srpt_rdma_cm_handler ;

__attribute__((used)) static struct rdma_cm_id *srpt_create_rdma_id(struct sockaddr *listen_addr)
{
 struct rdma_cm_id *rdma_cm_id;
 int ret;

 rdma_cm_id = rdma_create_id(&init_net, srpt_rdma_cm_handler,
        ((void*)0), RDMA_PS_TCP, IB_QPT_RC);
 if (IS_ERR(rdma_cm_id)) {
  pr_err("RDMA/CM ID creation failed: %ld\n",
         PTR_ERR(rdma_cm_id));
  goto out;
 }

 ret = rdma_bind_addr(rdma_cm_id, listen_addr);
 if (ret) {
  char addr_str[64];

  snprintf(addr_str, sizeof(addr_str), "%pISp", listen_addr);
  pr_err("Binding RDMA/CM ID to address %s failed: %d\n",
         addr_str, ret);
  rdma_destroy_id(rdma_cm_id);
  rdma_cm_id = ERR_PTR(ret);
  goto out;
 }

 ret = rdma_listen(rdma_cm_id, 128);
 if (ret) {
  pr_err("rdma_listen() failed: %d\n", ret);
  rdma_destroy_id(rdma_cm_id);
  rdma_cm_id = ERR_PTR(ret);
 }

out:
 return rdma_cm_id;
}
