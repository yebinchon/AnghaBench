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
struct iio_dev {int modes; int /*<<< orphan*/  id; int /*<<< orphan*/  buffer; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int INDIO_ALL_TRIGGERED_MODES ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  iio_ida ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 

__attribute__((used)) static void FUNC7(struct device *device)
{
	struct iio_dev *indio_dev = FUNC0(device);
	if (indio_dev->modes & INDIO_ALL_TRIGGERED_MODES)
		FUNC5(indio_dev);
	FUNC3(indio_dev);
	FUNC4(indio_dev);

	FUNC2(indio_dev->buffer);

	FUNC1(&iio_ida, indio_dev->id);
	FUNC6(indio_dev);
}