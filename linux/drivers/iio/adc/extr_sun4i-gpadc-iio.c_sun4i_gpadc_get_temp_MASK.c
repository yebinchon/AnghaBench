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
struct sun4i_gpadc_iio {int /*<<< orphan*/  indio_dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(void *data, int *temp)
{
	struct sun4i_gpadc_iio *info = data;
	int val, scale, offset;

	if (FUNC1(info->indio_dev, &val))
		return -ETIMEDOUT;

	FUNC2(info->indio_dev, &scale);
	FUNC0(info->indio_dev, &offset);

	*temp = (val + offset) * scale;

	return 0;
}