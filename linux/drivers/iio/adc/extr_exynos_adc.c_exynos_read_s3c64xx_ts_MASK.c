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
struct iio_dev {int /*<<< orphan*/  mlock; int /*<<< orphan*/  dev; } ;
struct exynos_adc {int read_ts; int ts_x; int ts_y; TYPE_1__* data; int /*<<< orphan*/  completion; int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init_hw ) (struct exynos_adc*) ;int /*<<< orphan*/  (* start_conv ) (struct exynos_adc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_S3C2410_MUX_TS ; 
 int ADC_S3C2410_TSC_PULL_UP_DISABLE ; 
 int ADC_TSC_AUTOPST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  EXYNOS_ADC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct exynos_adc* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_adc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct exynos_adc*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct iio_dev *indio_dev, int *x, int *y)
{
	struct exynos_adc *info = FUNC2(indio_dev);
	unsigned long timeout;
	int ret;

	FUNC3(&indio_dev->mlock);
	info->read_ts = true;

	FUNC5(&info->completion);

	FUNC9(ADC_S3C2410_TSC_PULL_UP_DISABLE | ADC_TSC_AUTOPST,
	       FUNC0(info->regs));

	/* Select the ts channel to be used and Trigger conversion */
	info->data->start_conv(info, ADC_S3C2410_MUX_TS);

	timeout = FUNC8(&info->completion,
					      EXYNOS_ADC_TIMEOUT);
	if (timeout == 0) {
		FUNC1(&indio_dev->dev, "Conversion timed out! Resetting\n");
		if (info->data->init_hw)
			info->data->init_hw(info);
		ret = -ETIMEDOUT;
	} else {
		*x = info->ts_x;
		*y = info->ts_y;
		ret = 0;
	}

	info->read_ts = false;
	FUNC4(&indio_dev->mlock);

	return ret;
}