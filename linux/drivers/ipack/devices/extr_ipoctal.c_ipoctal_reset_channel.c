
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipoctal_channel {TYPE_2__* regs; scalar_t__ rx_enable; } ;
struct TYPE_3__ {int cr; } ;
struct TYPE_4__ {TYPE_1__ w; } ;


 int CR_CMD_RESET_ERR_STATUS ;
 int CR_CMD_RESET_MR ;
 int CR_CMD_RESET_RX ;
 int CR_CMD_RESET_TX ;
 int CR_DISABLE_RX ;
 int CR_DISABLE_TX ;
 int iowrite8 (int,int *) ;

__attribute__((used)) static void ipoctal_reset_channel(struct ipoctal_channel *channel)
{
 iowrite8(CR_DISABLE_RX | CR_DISABLE_TX, &channel->regs->w.cr);
 channel->rx_enable = 0;
 iowrite8(CR_CMD_RESET_RX, &channel->regs->w.cr);
 iowrite8(CR_CMD_RESET_TX, &channel->regs->w.cr);
 iowrite8(CR_CMD_RESET_ERR_STATUS, &channel->regs->w.cr);
 iowrite8(CR_CMD_RESET_MR, &channel->regs->w.cr);
}
