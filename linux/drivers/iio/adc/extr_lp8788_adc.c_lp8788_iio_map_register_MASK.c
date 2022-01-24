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
struct lp8788_platform_data {struct iio_map* adc_pdata; } ;
struct lp8788_adc {struct iio_map* map; } ;
struct iio_map {int dummy; } ;
struct iio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct iio_dev*,struct iio_map*) ; 
 struct iio_map* lp8788_default_iio_maps ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev,
				struct lp8788_platform_data *pdata,
				struct lp8788_adc *adc)
{
	struct iio_map *map;
	int ret;

	map = (!pdata || !pdata->adc_pdata) ?
		lp8788_default_iio_maps : pdata->adc_pdata;

	ret = FUNC1(indio_dev, map);
	if (ret) {
		FUNC0(&indio_dev->dev, "iio map err: %d\n", ret);
		return ret;
	}

	adc->map = map;
	return 0;
}