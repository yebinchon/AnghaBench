#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct stm32_adc {unsigned int num_conv; void* rx_buf_sz; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int STM32_DMA_BUFFER_SIZE ; 
 struct stm32_adc* FUNC0 (struct iio_dev*) ; 
 void* FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev, unsigned int val)
{
	struct stm32_adc *adc = FUNC0(indio_dev);
	unsigned int watermark = STM32_DMA_BUFFER_SIZE / 2;
	unsigned int rx_buf_sz = STM32_DMA_BUFFER_SIZE;

	/*
	 * dma cyclic transfers are used, buffer is split into two periods.
	 * There should be :
	 * - always one buffer (period) dma is working on
	 * - one buffer (period) driver can push with iio_trigger_poll().
	 */
	watermark = FUNC1(watermark, val * (unsigned)(sizeof(u16)));
	adc->rx_buf_sz = FUNC1(rx_buf_sz, watermark * 2 * adc->num_conv);

	return 0;
}