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
struct gb_interface {int active; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_interface*) ; 
 int FUNC4 (struct gb_interface*) ; 
 scalar_t__ FUNC5 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct gb_interface* FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				 struct device_attribute *attr, const char *buf,
				 size_t len)
{
	struct gb_interface *intf = FUNC8(dev);
	bool activate;
	int ret = 0;

	if (FUNC5(buf, &activate))
		return -EINVAL;

	FUNC6(&intf->mutex);

	if (activate == intf->active)
		goto unlock;

	if (activate) {
		ret = FUNC1(intf);
		if (ret) {
			FUNC0(&intf->dev,
				"failed to activate interface: %d\n", ret);
			goto unlock;
		}

		ret = FUNC4(intf);
		if (ret) {
			FUNC0(&intf->dev,
				"failed to enable interface: %d\n", ret);
			FUNC2(intf);
			goto unlock;
		}
	} else {
		FUNC3(intf);
		FUNC2(intf);
	}

unlock:
	FUNC7(&intf->mutex);

	if (ret)
		return ret;

	return len;
}