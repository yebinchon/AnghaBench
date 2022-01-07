
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lg4573 {int dummy; } ;


 int lg4573_spi_write_u16 (struct lg4573*,int) ;

__attribute__((used)) static int lg4573_spi_write_dcs(struct lg4573 *ctx, u8 dcs)
{
 return lg4573_spi_write_u16(ctx, (0x70 << 8 | dcs));
}
