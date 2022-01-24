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
struct kobject {int dummy; } ;
struct file_operations {int dummy; } ;
struct device {int dummy; } ;
struct cdev {int /*<<< orphan*/  kobj; int /*<<< orphan*/  owner; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC4 (struct cdev*,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*,struct file_operations const*) ; 
 int /*<<< orphan*/  FUNC7 (struct cdev*,struct kobject*) ; 
 int /*<<< orphan*/  class ; 
 struct device* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  hfi1_dev ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char const*,int) ; 
 int /*<<< orphan*/  user_class ; 

int FUNC11(int minor, const char *name,
		   const struct file_operations *fops,
		   struct cdev *cdev, struct device **devp,
		   bool user_accessible,
		   struct kobject *parent)
{
	const dev_t dev = FUNC2(FUNC1(hfi1_dev), minor);
	struct device *device = NULL;
	int ret;

	FUNC6(cdev, fops);
	cdev->owner = THIS_MODULE;
	FUNC7(cdev, parent);
	FUNC9(&cdev->kobj, name);

	ret = FUNC4(cdev, dev, 1);
	if (ret < 0) {
		FUNC10("Could not add cdev for minor %d, %s (err %d)\n",
		       minor, name, -ret);
		goto done;
	}

	if (user_accessible)
		device = FUNC8(user_class, NULL, dev, NULL, "%s", name);
	else
		device = FUNC8(class, NULL, dev, NULL, "%s", name);

	if (FUNC0(device)) {
		ret = FUNC3(device);
		device = NULL;
		FUNC10("Could not create device for minor %d, %s (err %d)\n",
			minor, name, -ret);
		FUNC5(cdev);
	}
done:
	*devp = device;
	return ret;
}