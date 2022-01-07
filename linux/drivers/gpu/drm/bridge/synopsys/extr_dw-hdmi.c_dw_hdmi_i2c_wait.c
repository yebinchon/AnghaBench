
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi_i2c {int stat; int cmp; } ;
struct dw_hdmi {struct dw_hdmi_i2c* i2c; } ;


 int EAGAIN ;
 int EIO ;
 int HDMI_IH_I2CM_STAT0_ERROR ;
 int HZ ;
 int dw_hdmi_i2c_unwedge (struct dw_hdmi*) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int dw_hdmi_i2c_wait(struct dw_hdmi *hdmi)
{
 struct dw_hdmi_i2c *i2c = hdmi->i2c;
 int stat;

 stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
 if (!stat) {

  if (!dw_hdmi_i2c_unwedge(hdmi))
   return -EAGAIN;


  stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
  if (!stat)
   return -EAGAIN;
 }


 if (i2c->stat & HDMI_IH_I2CM_STAT0_ERROR)
  return -EIO;

 return 0;
}
