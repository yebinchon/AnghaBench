
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dev; } ;
struct TYPE_2__ {int startup_time; } ;
struct at91_adc_state {unsigned int current_sample_rate; TYPE_1__ soc_info; int per_clk; } ;


 int AT91_SAMA5D2_MR ;
 unsigned int AT91_SAMA5D2_MR_PRESCAL (unsigned int) ;
 unsigned int AT91_SAMA5D2_MR_PRESCAL_MASK ;
 unsigned int AT91_SAMA5D2_MR_STARTUP (unsigned int) ;
 unsigned int AT91_SAMA5D2_MR_STARTUP_MASK ;
 unsigned int at91_adc_readl (struct at91_adc_state*,int ) ;
 unsigned int at91_adc_startup_time (int ,unsigned int) ;
 int at91_adc_writel (struct at91_adc_state*,int ,unsigned int) ;
 unsigned int clk_get_rate (int ) ;
 int dev_dbg (int *,char*,unsigned int,unsigned int,unsigned int) ;
 struct iio_dev* iio_priv_to_dev (struct at91_adc_state*) ;

__attribute__((used)) static void at91_adc_setup_samp_freq(struct at91_adc_state *st, unsigned freq)
{
 struct iio_dev *indio_dev = iio_priv_to_dev(st);
 unsigned f_per, prescal, startup, mr;

 f_per = clk_get_rate(st->per_clk);
 prescal = (f_per / (2 * freq)) - 1;

 startup = at91_adc_startup_time(st->soc_info.startup_time,
     freq / 1000);

 mr = at91_adc_readl(st, AT91_SAMA5D2_MR);
 mr &= ~(AT91_SAMA5D2_MR_STARTUP_MASK | AT91_SAMA5D2_MR_PRESCAL_MASK);
 mr |= AT91_SAMA5D2_MR_STARTUP(startup);
 mr |= AT91_SAMA5D2_MR_PRESCAL(prescal);
 at91_adc_writel(st, AT91_SAMA5D2_MR, mr);

 dev_dbg(&indio_dev->dev, "freq: %u, startup: %u, prescal: %u\n",
  freq, startup, prescal);
 st->current_sample_rate = freq;
}
