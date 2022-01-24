#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7768_state {int /*<<< orphan*/  mclk_freq; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  clk_div; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_1__* ad7768_clk_config ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 struct ad7768_state* FUNC3 (struct iio_dev*) ; 
 scalar_t__ FUNC4 (char*,scalar_t__,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					  struct device_attribute *attr,
					  char *buf)
{
	struct iio_dev *indio_dev = FUNC2(dev);
	struct ad7768_state *st = FUNC3(indio_dev);
	unsigned int freq;
	int i, len = 0;

	for (i = 0; i < FUNC0(ad7768_clk_config); i++) {
		freq = FUNC1(st->mclk_freq,
					 ad7768_clk_config[i].clk_div);
		len += FUNC4(buf + len, PAGE_SIZE - len, "%d ", freq);
	}

	buf[len - 1] = '\n';

	return len;
}