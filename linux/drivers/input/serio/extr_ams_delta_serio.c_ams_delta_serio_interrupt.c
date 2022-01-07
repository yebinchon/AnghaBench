
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ams_delta_serio {int* fiq_buffer; int serio; } ;
typedef int irqreturn_t ;


 size_t FIQ_BUF_LEN ;
 size_t FIQ_CIRC_BUFF ;
 size_t FIQ_HEAD_OFFSET ;
 size_t FIQ_IRQ_PEND ;
 size_t FIQ_KEYS_CNT ;
 int IRQ_HANDLED ;
 int check_data (int ,int) ;
 int serio_interrupt (int ,int,int) ;

__attribute__((used)) static irqreturn_t ams_delta_serio_interrupt(int irq, void *dev_id)
{
 struct ams_delta_serio *priv = dev_id;
 int *circ_buff = &priv->fiq_buffer[FIQ_CIRC_BUFF];
 int data, dfl;
 u8 scancode;

 priv->fiq_buffer[FIQ_IRQ_PEND] = 0;





 while (priv->fiq_buffer[FIQ_KEYS_CNT] > 0) {

  data = circ_buff[priv->fiq_buffer[FIQ_HEAD_OFFSET]++];
  priv->fiq_buffer[FIQ_KEYS_CNT]--;
  if (priv->fiq_buffer[FIQ_HEAD_OFFSET] ==
      priv->fiq_buffer[FIQ_BUF_LEN])
   priv->fiq_buffer[FIQ_HEAD_OFFSET] = 0;

  dfl = check_data(priv->serio, data);
  scancode = (u8) (data >> 1) & 0xFF;
  serio_interrupt(priv->serio, scancode, dfl);
 }
 return IRQ_HANDLED;
}
