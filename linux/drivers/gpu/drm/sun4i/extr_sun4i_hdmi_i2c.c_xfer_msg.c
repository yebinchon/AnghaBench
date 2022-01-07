
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun4i_hdmi {int field_ddc_int_status; int field_ddc_start; int field_ddc_cmd; int field_ddc_byte_count; int field_ddc_fifo_clear; int field_ddc_fifo_rx_thres; TYPE_1__* variant; int field_ddc_fifo_tx_thres; int field_ddc_slave_addr; int field_ddc_addr_reg; scalar_t__ base; } ;
struct i2c_msg {int flags; int addr; int len; scalar_t__ buf; } ;
struct TYPE_2__ {scalar_t__ ddc_fifo_thres_incl; scalar_t__ ddc_fifo_has_dir; } ;


 int EIO ;
 int I2C_M_RD ;
 int RX_THRESHOLD ;
 int SUN4I_HDMI_DDC_CMD_IMPLICIT_READ ;
 int SUN4I_HDMI_DDC_CMD_IMPLICIT_WRITE ;
 int SUN4I_HDMI_DDC_CTRL_FIFO_DIR_MASK ;
 int SUN4I_HDMI_DDC_CTRL_FIFO_DIR_READ ;
 int SUN4I_HDMI_DDC_CTRL_FIFO_DIR_WRITE ;
 scalar_t__ SUN4I_HDMI_DDC_CTRL_REG ;
 int SUN4I_HDMI_DDC_INT_STATUS_ERROR_MASK ;
 int SUN4I_HDMI_DDC_INT_STATUS_FIFO_REQUEST ;
 int SUN4I_HDMI_DDC_INT_STATUS_TRANSFER_COMPLETE ;
 int fifo_transfer (struct sun4i_hdmi*,scalar_t__,int,int) ;
 int readl (scalar_t__) ;
 int regmap_field_force_write (int ,int) ;
 int regmap_field_read (int ,int*) ;
 scalar_t__ regmap_field_read_poll_timeout (int ,int,int,int,int) ;
 int regmap_field_write (int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int xfer_msg(struct sun4i_hdmi *hdmi, struct i2c_msg *msg)
{
 int i, len;
 u32 reg;


 if (hdmi->variant->ddc_fifo_has_dir) {
  reg = readl(hdmi->base + SUN4I_HDMI_DDC_CTRL_REG);
  reg &= ~SUN4I_HDMI_DDC_CTRL_FIFO_DIR_MASK;
  reg |= (msg->flags & I2C_M_RD) ?
         SUN4I_HDMI_DDC_CTRL_FIFO_DIR_READ :
         SUN4I_HDMI_DDC_CTRL_FIFO_DIR_WRITE;
  writel(reg, hdmi->base + SUN4I_HDMI_DDC_CTRL_REG);
 }


 regmap_field_write(hdmi->field_ddc_addr_reg, 0);


 regmap_field_write(hdmi->field_ddc_slave_addr, msg->addr);







 regmap_field_write(hdmi->field_ddc_fifo_tx_thres,
      hdmi->variant->ddc_fifo_thres_incl ? 0 : 1);
 regmap_field_write(hdmi->field_ddc_fifo_rx_thres, RX_THRESHOLD);
 regmap_field_write(hdmi->field_ddc_fifo_clear, 1);
 if (regmap_field_read_poll_timeout(hdmi->field_ddc_fifo_clear,
        reg, !reg, 100, 2000))
  return -EIO;


 regmap_field_write(hdmi->field_ddc_byte_count, msg->len);


 regmap_field_write(hdmi->field_ddc_cmd,
      msg->flags & I2C_M_RD ?
      SUN4I_HDMI_DDC_CMD_IMPLICIT_READ :
      SUN4I_HDMI_DDC_CMD_IMPLICIT_WRITE);


 regmap_field_force_write(hdmi->field_ddc_int_status,
     SUN4I_HDMI_DDC_INT_STATUS_ERROR_MASK |
     SUN4I_HDMI_DDC_INT_STATUS_FIFO_REQUEST |
     SUN4I_HDMI_DDC_INT_STATUS_TRANSFER_COMPLETE);


 regmap_field_write(hdmi->field_ddc_start, 1);


 for (i = 0; i < msg->len; i += len) {
  len = fifo_transfer(hdmi, msg->buf + i, msg->len - i,
        msg->flags & I2C_M_RD);
  if (len <= 0)
   return len;
 }


 if (regmap_field_read_poll_timeout(hdmi->field_ddc_start,
        reg, !reg, 100, 100000))
  return -EIO;


 regmap_field_read(hdmi->field_ddc_int_status, &reg);
 if ((reg & SUN4I_HDMI_DDC_INT_STATUS_ERROR_MASK) ||
     !(reg & SUN4I_HDMI_DDC_INT_STATUS_TRANSFER_COMPLETE)) {
  return -EIO;
 }

 return 0;
}
