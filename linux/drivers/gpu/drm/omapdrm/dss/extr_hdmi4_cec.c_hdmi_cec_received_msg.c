
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_core_data {int base; int adap; } ;
struct cec_msg {int len; int* msg; } ;


 int CEC_MAX_MSG_SIZE ;
 unsigned int HDMI_CEC_RX_CMD_HEADER ;
 unsigned int HDMI_CEC_RX_COMMAND ;
 unsigned int HDMI_CEC_RX_CONTROL ;
 unsigned int HDMI_CEC_RX_COUNT ;
 unsigned int HDMI_CEC_RX_OPERAND ;
 int cec_received_msg (int ,struct cec_msg*) ;
 int hdmi_read_reg (int ,unsigned int) ;
 int hdmi_write_reg (int ,unsigned int,int) ;
 int udelay (int) ;

__attribute__((used)) static void hdmi_cec_received_msg(struct hdmi_core_data *core)
{
 u32 cnt = hdmi_read_reg(core->base, HDMI_CEC_RX_COUNT) & 0xff;


 while (cnt & 0x70) {

  if (!(cnt & 0x80)) {
   struct cec_msg msg = {};
   unsigned int i;


   msg.len = cnt & 0xf;
   if (msg.len > CEC_MAX_MSG_SIZE - 2)
    msg.len = CEC_MAX_MSG_SIZE - 2;
   msg.msg[0] = hdmi_read_reg(core->base,
         HDMI_CEC_RX_CMD_HEADER);
   msg.msg[1] = hdmi_read_reg(core->base,
         HDMI_CEC_RX_COMMAND);
   for (i = 0; i < msg.len; i++) {
    unsigned int reg = HDMI_CEC_RX_OPERAND + i * 4;

    msg.msg[2 + i] =
     hdmi_read_reg(core->base, reg);
   }
   msg.len += 2;
   cec_received_msg(core->adap, &msg);
  }

  hdmi_write_reg(core->base, HDMI_CEC_RX_CONTROL, 1);

  while (hdmi_read_reg(core->base, HDMI_CEC_RX_CONTROL) & 1)
   udelay(1);




  cnt = hdmi_read_reg(core->base, HDMI_CEC_RX_COUNT) & 0xff;
 }
}
