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
struct spi_transfer {int* rx_buf; int len; int bits_per_word; } ;
struct spi_message {int dummy; } ;
struct ad7949_adc_chip {int buffer; unsigned int current_channel; int /*<<< orphan*/  spi; int /*<<< orphan*/  resolution; } ;

/* Variables and functions */
 int AD7949_CFG_REG_SIZE_BITS ; 
 int /*<<< orphan*/  AD7949_MASK_CHANNEL_SEL ; 
 unsigned int AD7949_OFFSET_CHANNEL_SEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ad7949_adc_chip*) ; 
 scalar_t__ FUNC2 (struct ad7949_adc_chip*) ; 
 int FUNC3 (struct ad7949_adc_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*,struct spi_transfer*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ad7949_adc_chip *ad7949_adc, int *val,
				   unsigned int channel)
{
	int ret;
	int bits_per_word = FUNC1(ad7949_adc);
	int mask = FUNC0(ad7949_adc->resolution, 0);
	struct spi_message msg;
	struct spi_transfer tx[] = {
		{
			.rx_buf = &ad7949_adc->buffer,
			.len = 4,
			.bits_per_word = bits_per_word,
		},
	};

	ret = FUNC3(ad7949_adc,
				   channel << AD7949_OFFSET_CHANNEL_SEL,
				   AD7949_MASK_CHANNEL_SEL);
	if (ret)
		return ret;

	ad7949_adc->buffer = 0;
	FUNC4(&msg, tx, 1);
	ret = FUNC5(ad7949_adc->spi, &msg);
	if (ret)
		return ret;

	/*
	 * This delay is to avoid a new request before the required time to
	 * send a new command to the device
	 */
	FUNC6(2);

	ad7949_adc->current_channel = channel;

	if (FUNC2(ad7949_adc))
		*val = (ad7949_adc->buffer >> AD7949_CFG_REG_SIZE_BITS) & mask;
	else
		*val = ad7949_adc->buffer & mask;

	return 0;
}