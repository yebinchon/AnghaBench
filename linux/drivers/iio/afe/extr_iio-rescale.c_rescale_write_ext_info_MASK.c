#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rescale {TYPE_1__* ext_info; int /*<<< orphan*/  source; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct rescale* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC2(struct iio_dev *indio_dev,
				      uintptr_t private,
				      struct iio_chan_spec const *chan,
				      const char *buf, size_t len)
{
	struct rescale *rescale = FUNC0(indio_dev);

	return FUNC1(rescale->source,
					  rescale->ext_info[private].name,
					  buf, len);
}