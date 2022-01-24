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
struct iio_dev {int num_channels; } ;
struct dln2_adc {int /*<<< orphan*/  mutex; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct dln2_adc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dln2_adc*) ; 
 struct dln2_adc* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,unsigned long const*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
				 const unsigned long *scan_mask)
{
	struct dln2_adc *dln2 = FUNC3(indio_dev);
	int chan_count = indio_dev->num_channels - 1;
	int ret, i, j;

	FUNC4(&dln2->mutex);

	for (i = 0; i < chan_count; ++i) {
		ret = FUNC1(dln2, i,
						FUNC6(i, scan_mask));
		if (ret < 0) {
			for (j = 0; j < i; ++j)
				FUNC1(dln2, j, false);
			FUNC5(&dln2->mutex);
			FUNC0(&dln2->pdev->dev,
				"Unable to enable ADC channel %d\n", i);
			return -EBUSY;
		}
	}

	FUNC2(dln2);

	FUNC5(&dln2->mutex);

	return 0;
}