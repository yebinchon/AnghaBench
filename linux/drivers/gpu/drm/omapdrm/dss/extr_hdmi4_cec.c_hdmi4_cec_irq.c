
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_core_data {int base; int adap; } ;


 int CEC_TX_STATUS_MAX_RETRIES ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int HDMI_CEC_DBG_3 ;
 int HDMI_CEC_INT_STATUS_0 ;
 int HDMI_CEC_INT_STATUS_1 ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 int cec_transmit_done (int ,int,int ,int,int ,int ) ;
 int hdmi_cec_received_msg (struct hdmi_core_data*) ;
 int hdmi_read_reg (int ,int ) ;
 int hdmi_write_reg (int ,int ,int) ;

void hdmi4_cec_irq(struct hdmi_core_data *core)
{
 u32 stat0 = hdmi_read_reg(core->base, HDMI_CEC_INT_STATUS_0);
 u32 stat1 = hdmi_read_reg(core->base, HDMI_CEC_INT_STATUS_1);

 hdmi_write_reg(core->base, HDMI_CEC_INT_STATUS_0, stat0);
 hdmi_write_reg(core->base, HDMI_CEC_INT_STATUS_1, stat1);

 if (stat0 & 0x20) {
  cec_transmit_done(core->adap, CEC_TX_STATUS_OK,
      0, 0, 0, 0);
  REG_FLD_MOD(core->base, HDMI_CEC_DBG_3, 0x1, 7, 7);
 } else if (stat1 & 0x02) {
  u32 dbg3 = hdmi_read_reg(core->base, HDMI_CEC_DBG_3);

  cec_transmit_done(core->adap,
      CEC_TX_STATUS_NACK |
      CEC_TX_STATUS_MAX_RETRIES,
      0, (dbg3 >> 4) & 7, 0, 0);
  REG_FLD_MOD(core->base, HDMI_CEC_DBG_3, 0x1, 7, 7);
 }
 if (stat0 & 0x02)
  hdmi_cec_received_msg(core);
}
