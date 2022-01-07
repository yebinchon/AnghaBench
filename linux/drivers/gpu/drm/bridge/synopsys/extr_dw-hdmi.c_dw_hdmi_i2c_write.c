
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi_i2c {int is_regaddr; unsigned char slave_reg; int cmp; } ;
struct dw_hdmi {struct dw_hdmi_i2c* i2c; } ;


 int HDMI_I2CM_ADDRESS ;
 int HDMI_I2CM_DATAO ;
 int HDMI_I2CM_OPERATION ;
 int HDMI_I2CM_OPERATION_WRITE ;
 int dw_hdmi_i2c_wait (struct dw_hdmi*) ;
 int hdmi_writeb (struct dw_hdmi*,int ,int ) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int dw_hdmi_i2c_write(struct dw_hdmi *hdmi,
        unsigned char *buf, unsigned int length)
{
 struct dw_hdmi_i2c *i2c = hdmi->i2c;
 int ret;

 if (!i2c->is_regaddr) {

  i2c->slave_reg = buf[0];
  length--;
  buf++;
  i2c->is_regaddr = 1;
 }

 while (length--) {
  reinit_completion(&i2c->cmp);

  hdmi_writeb(hdmi, *buf++, HDMI_I2CM_DATAO);
  hdmi_writeb(hdmi, i2c->slave_reg++, HDMI_I2CM_ADDRESS);
  hdmi_writeb(hdmi, HDMI_I2CM_OPERATION_WRITE,
       HDMI_I2CM_OPERATION);

  ret = dw_hdmi_i2c_wait(hdmi);
  if (ret)
   return ret;
 }

 return 0;
}
