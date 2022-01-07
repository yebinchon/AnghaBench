
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iio_dev {int name; } ;
struct TYPE_2__ {int rx_buf_sz; int watermark; int dma_ts; size_t buf_idx; int * rx_buf; } ;
struct at91_adc_state {TYPE_1__ dma_st; } ;
typedef int s64 ;


 int AT91_SAMA5D2_IER_GOVRE ;
 int AT91_SAMA5D2_ISR ;
 int at91_adc_adjust_val_osr_array (struct at91_adc_state*,int *,int) ;
 int at91_adc_dma_size_done (struct at91_adc_state*) ;
 int at91_adc_readl (struct at91_adc_state*,int ) ;
 int div_s64 (int,int) ;
 void* iio_get_time_ns (struct iio_dev*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int) ;
 int pr_info_ratelimited (char*,int ) ;

__attribute__((used)) static void at91_adc_trigger_handler_dma(struct iio_dev *indio_dev)
{
 struct at91_adc_state *st = iio_priv(indio_dev);
 int transferred_len = at91_adc_dma_size_done(st);
 s64 ns = iio_get_time_ns(indio_dev);
 s64 interval;
 int sample_index = 0, sample_count, sample_size;

 u32 status = at91_adc_readl(st, AT91_SAMA5D2_ISR);

 if (status & AT91_SAMA5D2_IER_GOVRE)
  pr_info_ratelimited("%s: conversion overrun detected\n",
        indio_dev->name);

 sample_size = div_s64(st->dma_st.rx_buf_sz, st->dma_st.watermark);

 sample_count = div_s64(transferred_len, sample_size);





 interval = div_s64((ns - st->dma_st.dma_ts), sample_count);

 while (transferred_len >= sample_size) {




  at91_adc_adjust_val_osr_array(st,
     &st->dma_st.rx_buf[st->dma_st.buf_idx],
     sample_size);

  iio_push_to_buffers_with_timestamp(indio_dev,
    (st->dma_st.rx_buf + st->dma_st.buf_idx),
    (st->dma_st.dma_ts + interval * sample_index));

  transferred_len -= sample_size;

  st->dma_st.buf_idx += sample_size;

  if (st->dma_st.buf_idx >= st->dma_st.rx_buf_sz)
   st->dma_st.buf_idx = 0;
  sample_index++;
 }

 st->dma_st.dma_ts = iio_get_time_ns(indio_dev);
}
