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
struct vf610_adc {int /*<<< orphan*/ * sample_freq_avail; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct vf610_adc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct vf610_adc *info = FUNC2(FUNC1(dev));
	size_t len = 0;
	int i;

	for (i = 0; i < FUNC0(info->sample_freq_avail); i++)
		len += FUNC3(buf + len, PAGE_SIZE - len,
			"%u ", info->sample_freq_avail[i]);

	/* replace trailing space by newline */
	buf[len - 1] = '\n';

	return len;
}