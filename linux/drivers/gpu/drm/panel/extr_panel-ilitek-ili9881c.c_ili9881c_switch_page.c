
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ili9881c {int dsi; } ;
typedef int buf ;


 int mipi_dsi_dcs_write_buffer (int ,int*,int) ;

__attribute__((used)) static int ili9881c_switch_page(struct ili9881c *ctx, u8 page)
{
 u8 buf[4] = { 0xff, 0x98, 0x81, page };
 int ret;

 ret = mipi_dsi_dcs_write_buffer(ctx->dsi, buf, sizeof(buf));
 if (ret < 0)
  return ret;

 return 0;
}
