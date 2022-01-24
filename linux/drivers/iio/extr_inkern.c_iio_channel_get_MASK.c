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
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 char* FUNC0 (struct device*) ; 
 struct iio_channel* FUNC1 (char const*,char const*) ; 
 struct iio_channel* FUNC2 (int /*<<< orphan*/ ,char const*) ; 

struct iio_channel *FUNC3(struct device *dev,
				    const char *channel_name)
{
	const char *name = dev ? FUNC0(dev) : NULL;
	struct iio_channel *channel;

	if (dev) {
		channel = FUNC2(dev->of_node,
						     channel_name);
		if (channel != NULL)
			return channel;
	}

	return FUNC1(name, channel_name);
}