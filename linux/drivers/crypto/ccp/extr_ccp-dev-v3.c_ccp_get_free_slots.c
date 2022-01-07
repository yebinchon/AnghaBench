
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_cmd_queue {int reg_status; } ;


 unsigned int CMD_Q_DEPTH (int ) ;
 int ioread32 (int ) ;

__attribute__((used)) static unsigned int ccp_get_free_slots(struct ccp_cmd_queue *cmd_q)
{
 return CMD_Q_DEPTH(ioread32(cmd_q->reg_status));
}
