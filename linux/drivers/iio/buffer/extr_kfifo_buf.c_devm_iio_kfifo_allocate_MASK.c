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
struct iio_buffer {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_iio_kfifo_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct iio_buffer**) ; 
 struct iio_buffer** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_buffer**) ; 
 struct iio_buffer* FUNC3 () ; 

struct iio_buffer *FUNC4(struct device *dev)
{
	struct iio_buffer **ptr, *r;

	ptr = FUNC1(devm_iio_kfifo_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return NULL;

	r = FUNC3();
	if (r) {
		*ptr = r;
		FUNC0(dev, ptr);
	} else {
		FUNC2(ptr);
	}

	return r;
}