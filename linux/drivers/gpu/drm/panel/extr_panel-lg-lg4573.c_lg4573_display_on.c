
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg4573 {int dummy; } ;


 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int lg4573_spi_write_dcs (struct lg4573*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int lg4573_display_on(struct lg4573 *ctx)
{
 int ret;

 ret = lg4573_spi_write_dcs(ctx, MIPI_DCS_EXIT_SLEEP_MODE);
 if (ret)
  return ret;

 msleep(5);

 return lg4573_spi_write_dcs(ctx, MIPI_DCS_SET_DISPLAY_ON);
}
