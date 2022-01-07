
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7124_state {TYPE_1__* channel_config; int mclk; } ;
struct TYPE_2__ {void* odr; } ;


 int AD7124_FILTER (unsigned int) ;
 int AD7124_FILTER_FS (unsigned int) ;
 int AD7124_FILTER_FS_MSK ;
 void* DIV_ROUND_CLOSEST (unsigned int,unsigned int) ;
 int ad7124_spi_write_mask (struct ad7124_state*,int ,int ,int ,int) ;
 unsigned int clk_get_rate (int ) ;

__attribute__((used)) static int ad7124_set_channel_odr(struct ad7124_state *st,
      unsigned int channel,
      unsigned int odr)
{
 unsigned int fclk, odr_sel_bits;
 int ret;

 fclk = clk_get_rate(st->mclk);







 odr_sel_bits = DIV_ROUND_CLOSEST(fclk, odr * 32);
 if (odr_sel_bits < 1)
  odr_sel_bits = 1;
 else if (odr_sel_bits > 2047)
  odr_sel_bits = 2047;

 ret = ad7124_spi_write_mask(st, AD7124_FILTER(channel),
        AD7124_FILTER_FS_MSK,
        AD7124_FILTER_FS(odr_sel_bits), 3);
 if (ret < 0)
  return ret;

 st->channel_config[channel].odr =
  DIV_ROUND_CLOSEST(fclk, odr_sel_bits * 32);

 return 0;
}
