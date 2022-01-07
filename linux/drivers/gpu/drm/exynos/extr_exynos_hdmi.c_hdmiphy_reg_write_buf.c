
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hdmi_context {scalar_t__ regs_hdmiphy; scalar_t__ hdmiphy_port; } ;


 int EINVAL ;
 int i2c_master_send (scalar_t__,int const*,int) ;
 int writel (int const,scalar_t__) ;

__attribute__((used)) static int hdmiphy_reg_write_buf(struct hdmi_context *hdata,
   u32 reg_offset, const u8 *buf, u32 len)
{
 if ((reg_offset + len) > 32)
  return -EINVAL;

 if (hdata->hdmiphy_port) {
  int ret;

  ret = i2c_master_send(hdata->hdmiphy_port, buf, len);
  if (ret == len)
   return 0;
  return ret;
 } else {
  int i;
  for (i = 0; i < len; i++)
   writel(buf[i], hdata->regs_hdmiphy +
    ((reg_offset + i)<<2));
  return 0;
 }
}
