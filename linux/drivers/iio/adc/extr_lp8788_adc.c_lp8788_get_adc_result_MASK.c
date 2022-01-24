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
typedef  int u8 ;
struct lp8788_adc {int /*<<< orphan*/  lp; } ;
typedef  enum lp8788_adc_id { ____Placeholder_lp8788_adc_id } lp8788_adc_id ;

/* Variables and functions */
 int ADC_CONV_START ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  LP8788_ADC_CONF ; 
 int /*<<< orphan*/  LP8788_ADC_DONE ; 
 int /*<<< orphan*/  LP8788_ADC_RAW ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct lp8788_adc *adc, enum lp8788_adc_id id,
				int *val)
{
	unsigned int msb;
	unsigned int lsb;
	unsigned int result;
	u8 data;
	u8 rawdata[2];
	int size = FUNC0(rawdata);
	int retry = 5;
	int ret;

	data = (id << 1) | ADC_CONV_START;
	ret = FUNC3(adc->lp, LP8788_ADC_CONF, data);
	if (ret)
		goto err_io;

	/* retry until adc conversion is done */
	data = 0;
	while (retry--) {
		FUNC4(100, 200);

		ret = FUNC1(adc->lp, LP8788_ADC_DONE, &data);
		if (ret)
			goto err_io;

		/* conversion done */
		if (data)
			break;
	}

	ret = FUNC2(adc->lp, LP8788_ADC_RAW, rawdata, size);
	if (ret)
		goto err_io;

	msb = (rawdata[0] << 4) & 0x00000ff0;
	lsb = (rawdata[1] >> 4) & 0x0000000f;
	result = msb | lsb;
	*val = result;

	return 0;

err_io:
	return ret;
}