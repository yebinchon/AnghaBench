
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct its_node {scalar_t__ cmd_write; scalar_t__ cmd_base; } ;
struct its_cmd_block {scalar_t__* raw_cmd; } ;


 scalar_t__ ITS_CMD_QUEUE_NR_ENTRIES ;
 int cpu_relax () ;
 scalar_t__ its_queue_full (struct its_node*) ;
 int pr_err_ratelimited (char*) ;
 int udelay (int) ;

__attribute__((used)) static struct its_cmd_block *its_allocate_entry(struct its_node *its)
{
 struct its_cmd_block *cmd;
 u32 count = 1000000;

 while (its_queue_full(its)) {
  count--;
  if (!count) {
   pr_err_ratelimited("ITS queue not draining\n");
   return ((void*)0);
  }
  cpu_relax();
  udelay(1);
 }

 cmd = its->cmd_write++;


 if (its->cmd_write == (its->cmd_base + ITS_CMD_QUEUE_NR_ENTRIES))
  its->cmd_write = its->cmd_base;


 cmd->raw_cmd[0] = 0;
 cmd->raw_cmd[1] = 0;
 cmd->raw_cmd[2] = 0;
 cmd->raw_cmd[3] = 0;

 return cmd;
}
