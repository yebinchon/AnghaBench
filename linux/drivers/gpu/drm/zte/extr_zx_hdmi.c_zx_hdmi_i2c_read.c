
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zx_hdmi {int dev; } ;
struct i2c_msg {int len; int * buf; } ;


 int DDC_CMD_CLEAR_FIFO ;
 int DDC_CMD_MASK ;
 int DDC_CMD_SEQUENTIAL_READ ;
 int DDC_DOUT_CNT_MASK ;
 int DRM_DEV_ERROR (int ,char*) ;
 int ETIMEDOUT ;
 int ZX_DDC_CMD ;
 int ZX_DDC_DATA ;
 int ZX_DDC_DIN_CNT1 ;
 int ZX_DDC_DIN_CNT2 ;
 int ZX_DDC_DOUT_CNT ;
 int hdmi_readb (struct zx_hdmi*,int ) ;
 int hdmi_writeb (struct zx_hdmi*,int ,int) ;
 int hdmi_writeb_mask (struct zx_hdmi*,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int zx_hdmi_i2c_read(struct zx_hdmi *hdmi, struct i2c_msg *msg)
{
 int len = msg->len;
 u8 *buf = msg->buf;
 int retry = 0;
 int ret = 0;


 hdmi_writeb(hdmi, ZX_DDC_DIN_CNT2, (len >> 8) & 0xff);

 hdmi_writeb(hdmi, ZX_DDC_DIN_CNT1, len & 0xff);


 hdmi_writeb_mask(hdmi, ZX_DDC_CMD, DDC_CMD_MASK, DDC_CMD_CLEAR_FIFO);


 hdmi_writeb_mask(hdmi, ZX_DDC_CMD, DDC_CMD_MASK,
    DDC_CMD_SEQUENTIAL_READ);

 while (len > 0) {
  int cnt, i;


  usleep_range(500, 1000);

  cnt = hdmi_readb(hdmi, ZX_DDC_DOUT_CNT) & DDC_DOUT_CNT_MASK;
  if (cnt == 0) {
   if (++retry > 5) {
    DRM_DEV_ERROR(hdmi->dev,
           "DDC FIFO read timed out!");
    return -ETIMEDOUT;
   }
   continue;
  }

  for (i = 0; i < cnt; i++)
   *buf++ = hdmi_readb(hdmi, ZX_DDC_DATA);
  len -= cnt;
 }

 return ret;
}
