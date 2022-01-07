
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7124_state {TYPE_1__* channel_config; } ;
struct TYPE_2__ {unsigned int pga_bits; } ;


 int AD7124_CONFIG (unsigned int) ;
 int AD7124_CONFIG_PGA (unsigned int) ;
 int AD7124_CONFIG_PGA_MSK ;
 int ARRAY_SIZE (int ) ;
 unsigned int ad7124_find_closest_match (int ,int ,unsigned int) ;
 int ad7124_gain ;
 int ad7124_spi_write_mask (struct ad7124_state*,int ,int ,int ,int) ;

__attribute__((used)) static int ad7124_set_channel_gain(struct ad7124_state *st,
       unsigned int channel,
       unsigned int gain)
{
 unsigned int res;
 int ret;

 res = ad7124_find_closest_match(ad7124_gain,
     ARRAY_SIZE(ad7124_gain), gain);
 ret = ad7124_spi_write_mask(st, AD7124_CONFIG(channel),
        AD7124_CONFIG_PGA_MSK,
        AD7124_CONFIG_PGA(res), 2);
 if (ret < 0)
  return ret;

 st->channel_config[channel].pga_bits = res;

 return 0;
}
