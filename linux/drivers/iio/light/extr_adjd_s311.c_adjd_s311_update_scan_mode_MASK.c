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
struct iio_dev {int /*<<< orphan*/  scan_bytes; } ;
struct adjd_s311_data {int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct adjd_s311_data* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
	const unsigned long *scan_mask)
{
	struct adjd_s311_data *data = FUNC0(indio_dev);

	FUNC1(data->buffer);
	data->buffer = FUNC2(indio_dev->scan_bytes, GFP_KERNEL);
	if (data->buffer == NULL)
		return -ENOMEM;

	return 0;
}