
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi_i2c {int is_regaddr; int slave_reg; int is_segment; int cmp; } ;
struct dw_hdmi {int dev; struct dw_hdmi_i2c* i2c; } ;


 int HDMI_I2CM_ADDRESS ;
 int HDMI_I2CM_DATAI ;
 int HDMI_I2CM_OPERATION ;
 int HDMI_I2CM_OPERATION_READ ;
 int HDMI_I2CM_OPERATION_READ_EXT ;
 int dev_dbg (int ,char*) ;
 int dw_hdmi_i2c_wait (struct dw_hdmi*) ;
 int hdmi_readb (struct dw_hdmi*,int ) ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int dw_hdmi_i2c_read(struct dw_hdmi *hdmi,
       unsigned char *buf, unsigned int length)
{
 struct dw_hdmi_i2c *i2c = hdmi->i2c;
 int ret;

 if (!i2c->is_regaddr) {
  dev_dbg(hdmi->dev, "set read register address to 0\n");
  i2c->slave_reg = 0x00;
  i2c->is_regaddr = 1;
 }

 while (length--) {
  reinit_completion(&i2c->cmp);

  hdmi_writeb(hdmi, i2c->slave_reg++, HDMI_I2CM_ADDRESS);
  if (i2c->is_segment)
   hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_READ_EXT,
        HDMI_I2CM_OPERATION);
  else
   hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_READ,
        HDMI_I2CM_OPERATION);

  ret = dw_hdmi_i2c_wait(hdmi);
  if (ret)
   return ret;

  *buf++ = hdmi_readb(hdmi, HDMI_I2CM_DATAI);
 }
 i2c->is_segment = 0;

 return 0;
}
