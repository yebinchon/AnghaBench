
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct ipoctal_channel {scalar_t__ nb_bytes; scalar_t__ board_id; int rx_enable; int isr_rx_rdy_mask; int isr_tx_rdy_mask; TYPE_5__* regs; TYPE_2__* block_regs; } ;
struct TYPE_9__ {int cr; } ;
struct TYPE_8__ {int sr; } ;
struct TYPE_10__ {TYPE_4__ w; TYPE_3__ r; } ;
struct TYPE_6__ {int isr; } ;
struct TYPE_7__ {TYPE_1__ r; } ;


 int CR_CMD_NEGATE_RTSN ;
 int CR_CMD_RESET_BREAK_CHANGE ;
 int CR_DISABLE_TX ;
 int CR_ENABLE_RX ;
 int IMR_DELTA_BREAK_A ;
 int IMR_DELTA_BREAK_B ;
 scalar_t__ IPACK1_DEVICE_ID_SBS_OCTAL_485 ;
 int SR_RX_READY ;
 int SR_TX_EMPTY ;
 int SR_TX_READY ;
 int ioread8 (int *) ;
 int iowrite8 (int ,int *) ;
 int ipoctal_irq_rx (struct ipoctal_channel*,int) ;
 int ipoctal_irq_tx (struct ipoctal_channel*) ;

__attribute__((used)) static void ipoctal_irq_channel(struct ipoctal_channel *channel)
{
 u8 isr, sr;



 isr = ioread8(&channel->block_regs->r.isr);
 sr = ioread8(&channel->regs->r.sr);

 if (isr & (IMR_DELTA_BREAK_A | IMR_DELTA_BREAK_B))
  iowrite8(CR_CMD_RESET_BREAK_CHANGE, &channel->regs->w.cr);

 if ((sr & SR_TX_EMPTY) && (channel->nb_bytes == 0)) {
  iowrite8(CR_DISABLE_TX, &channel->regs->w.cr);


  if (channel->board_id == IPACK1_DEVICE_ID_SBS_OCTAL_485) {
   iowrite8(CR_CMD_NEGATE_RTSN, &channel->regs->w.cr);
   iowrite8(CR_ENABLE_RX, &channel->regs->w.cr);
   channel->rx_enable = 1;
  }
 }


 if ((isr & channel->isr_rx_rdy_mask) && (sr & SR_RX_READY))
  ipoctal_irq_rx(channel, sr);


 if ((isr & channel->isr_tx_rdy_mask) && (sr & SR_TX_READY))
  ipoctal_irq_tx(channel);
}
