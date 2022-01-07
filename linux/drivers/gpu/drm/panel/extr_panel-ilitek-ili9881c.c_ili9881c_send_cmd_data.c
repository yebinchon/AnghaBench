
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ili9881c {int dsi; } ;
typedef int buf ;


 int mipi_dsi_dcs_write_buffer (int ,int *,int) ;

__attribute__((used)) static int ili9881c_send_cmd_data(struct ili9881c *ctx, u8 cmd, u8 data)
{
 u8 buf[2] = { cmd, data };
 int ret;

 ret = mipi_dsi_dcs_write_buffer(ctx->dsi, buf, sizeof(buf));
 if (ret < 0)
  return ret;

 return 0;
}
