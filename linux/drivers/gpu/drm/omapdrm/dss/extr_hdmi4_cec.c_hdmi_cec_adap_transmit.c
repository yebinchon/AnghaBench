
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct hdmi_core_data {int base; } ;
struct cec_msg {int len; int* msg; } ;
struct cec_adapter {int name; } ;


 int EIO ;
 int HDMI_CEC_DBG_3 ;
 scalar_t__ HDMI_CEC_INT_STATUS_0 ;
 scalar_t__ HDMI_CEC_INT_STATUS_1 ;
 int HDMI_CEC_RETRANSMIT_CNT_INT_MASK ;
 scalar_t__ HDMI_CEC_TRANSMIT_DATA ;
 scalar_t__ HDMI_CEC_TX_COMMAND ;
 scalar_t__ HDMI_CEC_TX_DEST ;
 int HDMI_CEC_TX_FIFO_INT_MASK ;
 scalar_t__ HDMI_CEC_TX_INIT ;
 scalar_t__ HDMI_CEC_TX_OPERAND ;
 int REG_FLD_MOD (int ,int ,scalar_t__,int,int) ;
 struct hdmi_core_data* cec_get_drvdata (struct cec_adapter*) ;
 int cec_msg_destination (struct cec_msg*) ;
 int cec_msg_initiator (struct cec_msg*) ;
 int hdmi_cec_clear_tx_fifo (struct cec_adapter*) ;
 int hdmi_write_reg (int ,scalar_t__,int) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int hdmi_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
       u32 signal_free_time, struct cec_msg *msg)
{
 struct hdmi_core_data *core = cec_get_drvdata(adap);
 int temp;
 u32 i;


 if (!hdmi_cec_clear_tx_fifo(adap)) {
  pr_err("cec-%s: could not clear TX FIFO for transmit\n",
         adap->name);
  return -EIO;
 }


 hdmi_write_reg(core->base, HDMI_CEC_INT_STATUS_0,
         HDMI_CEC_TX_FIFO_INT_MASK);

 hdmi_write_reg(core->base, HDMI_CEC_INT_STATUS_1,
         HDMI_CEC_RETRANSMIT_CNT_INT_MASK);


 REG_FLD_MOD(core->base, HDMI_CEC_DBG_3, attempts - 1, 6, 4);


 hdmi_write_reg(core->base, HDMI_CEC_TX_INIT, cec_msg_initiator(msg));


 temp = cec_msg_destination(msg);
 if (msg->len == 1)
  temp |= 0x80;
 hdmi_write_reg(core->base, HDMI_CEC_TX_DEST, temp);
 if (msg->len == 1)
  return 0;


 hdmi_write_reg(core->base, HDMI_CEC_TX_COMMAND, msg->msg[1]);

 for (i = 0; i < msg->len - 2; i++)
  hdmi_write_reg(core->base, HDMI_CEC_TX_OPERAND + i * 4,
          msg->msg[2 + i]);


 hdmi_write_reg(core->base, HDMI_CEC_TRANSMIT_DATA,
         (msg->len - 2) | 0x10);
 return 0;
}
