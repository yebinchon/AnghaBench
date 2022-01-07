
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct efa_comp_ctx {int occupied; } ;
struct efa_com_admin_queue {int depth; struct efa_comp_ctx* comp_ctx; int efa_dev; } ;


 int ibdev_dbg (int ,char*,int) ;
 int ibdev_err_ratelimited (int ,char*,int) ;

__attribute__((used)) static struct efa_comp_ctx *efa_com_get_comp_ctx(struct efa_com_admin_queue *aq,
       u16 cmd_id, bool capture)
{
 u16 ctx_id = cmd_id & (aq->depth - 1);

 if (aq->comp_ctx[ctx_id].occupied && capture) {
  ibdev_err_ratelimited(
   aq->efa_dev,
   "Completion context for command_id %#x is occupied\n",
   cmd_id);
  return ((void*)0);
 }

 if (capture) {
  aq->comp_ctx[ctx_id].occupied = 1;
  ibdev_dbg(aq->efa_dev,
     "Take completion ctxt for command_id %#x\n", cmd_id);
 }

 return &aq->comp_ctx[ctx_id];
}
