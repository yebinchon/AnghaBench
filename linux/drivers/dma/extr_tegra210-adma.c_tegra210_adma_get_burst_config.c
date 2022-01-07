
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ADMA_CH_CONFIG_BURST_SIZE_SHIFT ;
 unsigned int ADMA_CH_CONFIG_MAX_BURST_SIZE ;
 unsigned int fls (unsigned int) ;

__attribute__((used)) static unsigned int tegra210_adma_get_burst_config(unsigned int burst_size)
{
 if (!burst_size || burst_size > ADMA_CH_CONFIG_MAX_BURST_SIZE)
  burst_size = ADMA_CH_CONFIG_MAX_BURST_SIZE;

 return fls(burst_size) << ADMA_CH_CONFIG_BURST_SIZE_SHIFT;
}
