#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iio_dev {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int rx_buf_sz; int watermark; int dma_ts; size_t buf_idx; int /*<<< orphan*/ * rx_buf; } ;
struct at91_adc_state {TYPE_1__ dma_st; } ;
typedef  int s64 ;

/* Variables and functions */
 int AT91_SAMA5D2_IER_GOVRE ; 
 int /*<<< orphan*/  AT91_SAMA5D2_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct at91_adc_state*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct at91_adc_state*) ; 
 int FUNC2 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 void* FUNC4 (struct iio_dev*) ; 
 struct at91_adc_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct iio_dev *indio_dev)
{
	struct at91_adc_state *st = FUNC5(indio_dev);
	int transferred_len = FUNC1(st);
	s64 ns = FUNC4(indio_dev);
	s64 interval;
	int sample_index = 0, sample_count, sample_size;

	u32 status = FUNC2(st, AT91_SAMA5D2_ISR);
	/* if we reached this point, we cannot sample faster */
	if (status & AT91_SAMA5D2_IER_GOVRE)
		FUNC7("%s: conversion overrun detected\n",
				    indio_dev->name);

	sample_size = FUNC3(st->dma_st.rx_buf_sz, st->dma_st.watermark);

	sample_count = FUNC3(transferred_len, sample_size);

	/*
	 * interval between samples is total time since last transfer handling
	 * divided by the number of samples (total size divided by sample size)
	 */
	interval = FUNC3((ns - st->dma_st.dma_ts), sample_count);

	while (transferred_len >= sample_size) {
		/*
		 * for all the values in the current sample,
		 * adjust the values inside the buffer for oversampling
		 */
		FUNC0(st,
					&st->dma_st.rx_buf[st->dma_st.buf_idx],
					sample_size);

		FUNC6(indio_dev,
				(st->dma_st.rx_buf + st->dma_st.buf_idx),
				(st->dma_st.dma_ts + interval * sample_index));
		/* adjust remaining length */
		transferred_len -= sample_size;
		/* adjust buffer index */
		st->dma_st.buf_idx += sample_size;
		/* in case of reaching end of buffer, reset index */
		if (st->dma_st.buf_idx >= st->dma_st.rx_buf_sz)
			st->dma_st.buf_idx = 0;
		sample_index++;
	}
	/* adjust saved time for next transfer handling */
	st->dma_st.dma_ts = FUNC4(indio_dev);
}