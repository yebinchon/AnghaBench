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
struct iio_channel {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct iio_channel* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct iio_channel*) ; 
 int /*<<< orphan*/  devm_iio_channel_free_all ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct iio_channel**) ; 
 struct iio_channel** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_channel**) ; 
 struct iio_channel* FUNC5 (struct device*) ; 

struct iio_channel *FUNC6(struct device *dev)
{
	struct iio_channel **ptr, *channels;

	ptr = FUNC3(devm_iio_channel_free_all, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	channels = FUNC5(dev);
	if (FUNC1(channels)) {
		FUNC4(ptr);
		return channels;
	}

	*ptr = channels;
	FUNC2(dev, ptr);

	return channels;
}