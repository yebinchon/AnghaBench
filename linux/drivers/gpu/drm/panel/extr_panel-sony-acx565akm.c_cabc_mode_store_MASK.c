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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acx565akm_panel {int /*<<< orphan*/  mutex; int /*<<< orphan*/  has_cabc; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 size_t EINVAL ; 
 char** acx565akm_cabc_modes ; 
 int /*<<< orphan*/  FUNC1 (struct acx565akm_panel*,unsigned int) ; 
 struct acx565akm_panel* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char const*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t count)
{
	struct acx565akm_panel *lcd = FUNC2(dev);
	unsigned int i;

	for (i = 0; i < FUNC0(acx565akm_cabc_modes); i++) {
		const char *mode_str = acx565akm_cabc_modes[i];
		int cmp_len = FUNC5(mode_str);

		if (count > 0 && buf[count - 1] == '\n')
			count--;
		if (count != cmp_len)
			continue;

		if (FUNC6(buf, mode_str, cmp_len) == 0)
			break;
	}

	if (i == FUNC0(acx565akm_cabc_modes))
		return -EINVAL;

	if (!lcd->has_cabc && i != 0)
		return -EINVAL;

	FUNC3(&lcd->mutex);
	FUNC1(lcd, i);
	FUNC4(&lcd->mutex);

	return count;
}