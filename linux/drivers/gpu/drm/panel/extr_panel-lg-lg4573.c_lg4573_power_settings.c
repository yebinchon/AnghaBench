
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int dev; } ;
struct lg4573 {TYPE_1__ panel; } ;


 int ARRAY_SIZE (int const*) ;
 int dev_dbg (int ,char*) ;
 int lg4573_spi_write_u16_array (struct lg4573*,int const*,int ) ;

__attribute__((used)) static int lg4573_power_settings(struct lg4573 *ctx)
{
 static const u16 power_settings[] = {
  0x70C0, 0x7201, 0x7211, 0x70C3,
  0x7207, 0x7203, 0x7204, 0x7204,
  0x7204, 0x70C4, 0x7212, 0x7224,
  0x7218, 0x7218, 0x7202, 0x7249,
  0x70C5, 0x726F, 0x70C6, 0x7241,
  0x7263,
 };

 dev_dbg(ctx->panel.dev, "transfer power settings\n");
 return lg4573_spi_write_u16_array(ctx, power_settings,
       ARRAY_SIZE(power_settings));
}
