
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st7789v {int dummy; } ;


 int ST7789V_COMMAND ;
 int st7789v_spi_write (struct st7789v*,int ,int ) ;

__attribute__((used)) static int st7789v_write_command(struct st7789v *ctx, u8 cmd)
{
 return st7789v_spi_write(ctx, ST7789V_COMMAND, cmd);
}
