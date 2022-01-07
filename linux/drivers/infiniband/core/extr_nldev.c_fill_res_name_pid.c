
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rdma_restrack_entry {int task; int kern_name; } ;


 int EMSGSIZE ;
 int RDMA_NLDEV_ATTR_RES_KERN_NAME ;
 int RDMA_NLDEV_ATTR_RES_PID ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ rdma_is_kernel_res (struct rdma_restrack_entry*) ;
 int task_pid_vnr (int ) ;

__attribute__((used)) static int fill_res_name_pid(struct sk_buff *msg,
        struct rdma_restrack_entry *res)
{




 if (rdma_is_kernel_res(res)) {
  if (nla_put_string(msg, RDMA_NLDEV_ATTR_RES_KERN_NAME,
      res->kern_name))
   return -EMSGSIZE;
 } else {
  if (nla_put_u32(msg, RDMA_NLDEV_ATTR_RES_PID,
      task_pid_vnr(res->task)))
   return -EMSGSIZE;
 }
 return 0;
}
