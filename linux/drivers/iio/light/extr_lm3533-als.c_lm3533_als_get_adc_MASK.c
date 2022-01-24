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
struct lm3533_als {int /*<<< orphan*/  lm3533; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int LM3533_REG_ALS_READ_ADC_AVERAGE ; 
 int LM3533_REG_ALS_READ_ADC_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm3533_als* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev, bool average,
								int *adc)
{
	struct lm3533_als *als = FUNC1(indio_dev);
	u8 reg;
	u8 val;
	int ret;

	if (average)
		reg = LM3533_REG_ALS_READ_ADC_AVERAGE;
	else
		reg = LM3533_REG_ALS_READ_ADC_RAW;

	ret = FUNC2(als->lm3533, reg, &val);
	if (ret) {
		FUNC0(&indio_dev->dev, "failed to read adc\n");
		return ret;
	}

	*adc = val;

	return 0;
}