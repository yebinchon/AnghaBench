
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ucma_multicast {int list; int id; int addr; int uid; int join_state; } ;
struct ucma_file {int mut; } ;
struct ucma_context {int cm_id; } ;
struct sockaddr {int dummy; } ;
struct rdma_ucm_join_mcast {scalar_t__ addr_size; scalar_t__ join_flags; int response; int uid; int id; int addr; } ;
struct rdma_ucm_create_id_resp {int id; } ;
typedef int ssize_t ;
typedef int resp ;


 int BIT (int ) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSPC ;
 int FULLMEMBER_JOIN ;
 scalar_t__ IS_ERR (struct ucma_context*) ;
 int PTR_ERR (struct ucma_context*) ;
 scalar_t__ RDMA_MC_JOIN_FLAG_FULLMEMBER ;
 scalar_t__ RDMA_MC_JOIN_FLAG_SENDONLY_FULLMEMBER ;
 int SENDONLY_FULLMEMBER_JOIN ;
 scalar_t__ copy_to_user (int ,struct rdma_ucm_create_id_resp*,int) ;
 int kfree (struct ucma_multicast*) ;
 int list_del (int *) ;
 int memcpy (int *,struct sockaddr*,scalar_t__) ;
 int multicast_table ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rdma_addr_size (struct sockaddr*) ;
 int rdma_join_multicast (int ,struct sockaddr*,int ,struct ucma_multicast*) ;
 int rdma_leave_multicast (int ,struct sockaddr*) ;
 int u64_to_user_ptr (int ) ;
 struct ucma_multicast* ucma_alloc_multicast (struct ucma_context*) ;
 int ucma_cleanup_mc_events (struct ucma_multicast*) ;
 struct ucma_context* ucma_get_ctx_dev (struct ucma_file*,int ) ;
 int ucma_put_ctx (struct ucma_context*) ;
 int xa_erase (int *,int ) ;
 int xa_store (int *,int ,struct ucma_multicast*,int ) ;

__attribute__((used)) static ssize_t ucma_process_join(struct ucma_file *file,
     struct rdma_ucm_join_mcast *cmd, int out_len)
{
 struct rdma_ucm_create_id_resp resp;
 struct ucma_context *ctx;
 struct ucma_multicast *mc;
 struct sockaddr *addr;
 int ret;
 u8 join_state;

 if (out_len < sizeof(resp))
  return -ENOSPC;

 addr = (struct sockaddr *) &cmd->addr;
 if (cmd->addr_size != rdma_addr_size(addr))
  return -EINVAL;

 if (cmd->join_flags == RDMA_MC_JOIN_FLAG_FULLMEMBER)
  join_state = BIT(FULLMEMBER_JOIN);
 else if (cmd->join_flags == RDMA_MC_JOIN_FLAG_SENDONLY_FULLMEMBER)
  join_state = BIT(SENDONLY_FULLMEMBER_JOIN);
 else
  return -EINVAL;

 ctx = ucma_get_ctx_dev(file, cmd->id);
 if (IS_ERR(ctx))
  return PTR_ERR(ctx);

 mutex_lock(&file->mut);
 mc = ucma_alloc_multicast(ctx);
 if (!mc) {
  ret = -ENOMEM;
  goto err1;
 }
 mc->join_state = join_state;
 mc->uid = cmd->uid;
 memcpy(&mc->addr, addr, cmd->addr_size);
 ret = rdma_join_multicast(ctx->cm_id, (struct sockaddr *)&mc->addr,
      join_state, mc);
 if (ret)
  goto err2;

 resp.id = mc->id;
 if (copy_to_user(u64_to_user_ptr(cmd->response),
    &resp, sizeof(resp))) {
  ret = -EFAULT;
  goto err3;
 }

 xa_store(&multicast_table, mc->id, mc, 0);

 mutex_unlock(&file->mut);
 ucma_put_ctx(ctx);
 return 0;

err3:
 rdma_leave_multicast(ctx->cm_id, (struct sockaddr *) &mc->addr);
 ucma_cleanup_mc_events(mc);
err2:
 xa_erase(&multicast_table, mc->id);
 list_del(&mc->list);
 kfree(mc);
err1:
 mutex_unlock(&file->mut);
 ucma_put_ctx(ctx);
 return ret;
}
