#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ssp_sensor_data {int /*<<< orphan*/  type; int /*<<< orphan*/  buffer; } ;
struct ssp_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct iio_dev {int /*<<< orphan*/  scan_bytes; TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 struct ssp_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ssp_sensor_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ssp_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ssp_data*,int /*<<< orphan*/ ) ; 

int FUNC5(struct iio_dev *indio_dev)
{
	struct ssp_sensor_data *spd = FUNC1(indio_dev);
	struct ssp_data *data = FUNC0(indio_dev->dev.parent->parent);

	/* the allocation is made in post because scan size is known in this
	 * moment
	 * */
	spd->buffer = FUNC2(indio_dev->scan_bytes, GFP_KERNEL | GFP_DMA);
	if (!spd->buffer)
		return -ENOMEM;

	return FUNC3(data, spd->type,
				 FUNC4(data, spd->type));
}