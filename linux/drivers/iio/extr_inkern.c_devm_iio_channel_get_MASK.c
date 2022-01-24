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
 int /*<<< orphan*/  devm_iio_channel_free ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct iio_channel**) ; 
 struct iio_channel** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_channel**) ; 
 struct iio_channel* FUNC5 (struct device*,char const*) ; 

struct iio_channel *FUNC6(struct device *dev,
					 const char *channel_name)
{
	struct iio_channel **ptr, *channel;

	ptr = FUNC3(devm_iio_channel_free, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	channel = FUNC5(dev, channel_name);
	if (FUNC1(channel)) {
		FUNC4(ptr);
		return channel;
	}

	*ptr = channel;
	FUNC2(dev, ptr);

	return channel;
}