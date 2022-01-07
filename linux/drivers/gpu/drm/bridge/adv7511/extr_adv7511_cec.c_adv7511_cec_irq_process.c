
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef unsigned int u32 ;
struct cec_msg {unsigned int len; unsigned int* msg; } ;
struct adv7511 {scalar_t__ type; int cec_adap; int regmap_cec; } ;


 unsigned int ADV7511_INT1_CEC_RX_READY1 ;
 unsigned int ADV7511_INT1_CEC_TX_ARBIT_LOST ;
 unsigned int ADV7511_INT1_CEC_TX_READY ;
 unsigned int ADV7511_INT1_CEC_TX_RETRY_TIMEOUT ;
 scalar_t__ ADV7511_REG_CEC_RX_BUFFERS ;
 scalar_t__ ADV7511_REG_CEC_RX_FRAME_HDR ;
 scalar_t__ ADV7511_REG_CEC_RX_FRAME_LEN ;
 scalar_t__ ADV7533 ;
 unsigned int ADV7533_REG_CEC_OFFSET ;
 int adv_cec_tx_raw_status (struct adv7511*,unsigned int) ;
 int cec_received_msg (int ,struct cec_msg*) ;
 scalar_t__ regmap_read (int ,scalar_t__,unsigned int*) ;
 int regmap_write (int ,scalar_t__,int) ;

void adv7511_cec_irq_process(struct adv7511 *adv7511, unsigned int irq1)
{
 unsigned int offset = adv7511->type == ADV7533 ?
     ADV7533_REG_CEC_OFFSET : 0;
 const u32 irq_tx_mask = ADV7511_INT1_CEC_TX_READY |
    ADV7511_INT1_CEC_TX_ARBIT_LOST |
    ADV7511_INT1_CEC_TX_RETRY_TIMEOUT;
 struct cec_msg msg = {};
 unsigned int len;
 unsigned int val;
 u8 i;

 if (irq1 & irq_tx_mask)
  adv_cec_tx_raw_status(adv7511, irq1);

 if (!(irq1 & ADV7511_INT1_CEC_RX_READY1))
  return;

 if (regmap_read(adv7511->regmap_cec,
   ADV7511_REG_CEC_RX_FRAME_LEN + offset, &len))
  return;

 msg.len = len & 0x1f;

 if (msg.len > 16)
  msg.len = 16;

 if (!msg.len)
  return;

 for (i = 0; i < msg.len; i++) {
  regmap_read(adv7511->regmap_cec,
       i + ADV7511_REG_CEC_RX_FRAME_HDR + offset, &val);
  msg.msg[i] = val;
 }


 regmap_write(adv7511->regmap_cec,
       ADV7511_REG_CEC_RX_BUFFERS + offset, 1);
 regmap_write(adv7511->regmap_cec,
       ADV7511_REG_CEC_RX_BUFFERS + offset, 0);
 cec_received_msg(adv7511->cec_adap, &msg);
}
