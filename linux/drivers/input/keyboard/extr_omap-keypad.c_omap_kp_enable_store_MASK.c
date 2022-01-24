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
struct omap_kp {int /*<<< orphan*/  irq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct omap_kp* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int kp_enable ; 
 int /*<<< orphan*/  kp_enable_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct omap_kp *omap_kp = FUNC0(dev);
	int state;

	if (FUNC5(buf, "%u", &state) != 1)
		return -EINVAL;

	if ((state != 1) && (state != 0))
		return -EINVAL;

	FUNC3(&kp_enable_mutex);
	if (state != kp_enable) {
		if (state)
			FUNC2(omap_kp->irq);
		else
			FUNC1(omap_kp->irq);
		kp_enable = state;
	}
	FUNC4(&kp_enable_mutex);

	return FUNC6(buf, count);
}