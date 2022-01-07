
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccp_device {unsigned int cmd_q_count; TYPE_1__* cmd_q; } ;
struct TYPE_2__ {int reg_int_enable; } ;


 int iowrite32 (int,int ) ;

__attribute__((used)) static void ccp5_disable_queue_interrupts(struct ccp_device *ccp)
{
 unsigned int i;

 for (i = 0; i < ccp->cmd_q_count; i++)
  iowrite32(0x0, ccp->cmd_q[i].reg_int_enable);
}
