
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rmi_f30_ctrl_data {int address; int length; int * regs; } ;



__attribute__((used)) static void rmi_f30_set_ctrl_data(struct rmi_f30_ctrl_data *ctrl,
      int *ctrl_addr, int len, u8 **reg)
{
 ctrl->address = *ctrl_addr;
 ctrl->length = len;
 ctrl->regs = *reg;
 *ctrl_addr += len;
 *reg += len;
}
