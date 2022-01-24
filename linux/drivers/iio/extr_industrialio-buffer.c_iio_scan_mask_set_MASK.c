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
struct iio_dev {int /*<<< orphan*/  masklength; scalar_t__ available_scan_masks; } ;
struct iio_buffer {unsigned long* scan_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*) ; 
 unsigned long* FUNC4 (scalar_t__,int /*<<< orphan*/ ,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,unsigned long*) ; 
 unsigned long* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
		      struct iio_buffer *buffer, int bit)
{
	const unsigned long *mask;
	unsigned long *trialmask;

	trialmask = FUNC6(FUNC0(indio_dev->masklength),
			    sizeof(*trialmask), GFP_KERNEL);
	if (trialmask == NULL)
		return -ENOMEM;
	if (!indio_dev->masklength) {
		FUNC1(1, "Trying to set scanmask prior to registering buffer\n");
		goto err_invalid_mask;
	}
	FUNC2(trialmask, buffer->scan_mask, indio_dev->masklength);
	FUNC7(bit, trialmask);

	if (!FUNC5(indio_dev, trialmask))
		goto err_invalid_mask;

	if (indio_dev->available_scan_masks) {
		mask = FUNC4(indio_dev->available_scan_masks,
					   indio_dev->masklength,
					   trialmask, false);
		if (!mask)
			goto err_invalid_mask;
	}
	FUNC2(buffer->scan_mask, trialmask, indio_dev->masklength);

	FUNC3(trialmask);

	return 0;

err_invalid_mask:
	FUNC3(trialmask);
	return -EINVAL;
}