
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {scalar_t__* cqp_cmd_stats; } ;
struct i40iw_cqp_timeout {scalar_t__ compl_cqp_cmds; scalar_t__ count; } ;


 size_t OP_COMPLETED_COMMANDS ;
 size_t OP_REQUESTED_COMMANDS ;

void i40iw_check_cqp_progress(struct i40iw_cqp_timeout *cqp_timeout, struct i40iw_sc_dev *dev)
{
 if (cqp_timeout->compl_cqp_cmds != dev->cqp_cmd_stats[OP_COMPLETED_COMMANDS]) {
  cqp_timeout->compl_cqp_cmds = dev->cqp_cmd_stats[OP_COMPLETED_COMMANDS];
  cqp_timeout->count = 0;
 } else {
  if (dev->cqp_cmd_stats[OP_REQUESTED_COMMANDS] != cqp_timeout->compl_cqp_cmds)
   cqp_timeout->count++;
 }
}
