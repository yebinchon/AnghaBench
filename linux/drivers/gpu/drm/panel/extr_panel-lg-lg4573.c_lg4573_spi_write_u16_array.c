
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lg4573 {int dummy; } ;


 int lg4573_spi_write_u16 (struct lg4573*,int const) ;

__attribute__((used)) static int lg4573_spi_write_u16_array(struct lg4573 *ctx, const u16 *buffer,
          unsigned int count)
{
 unsigned int i;
 int ret;

 for (i = 0; i < count; i++) {
  ret = lg4573_spi_write_u16(ctx, buffer[i]);
  if (ret)
   return ret;
 }

 return 0;
}
