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
struct file_operations {int dummy; } ;
struct device {int dummy; } ;
struct cdev {int /*<<< orphan*/  kobj; struct file_operations const* ops; int /*<<< orphan*/  owner; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC4 (struct cdev*,int /*<<< orphan*/  const,int) ; 
 struct cdev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char const*,...) ; 
 int /*<<< orphan*/  qib_class ; 
 int /*<<< orphan*/  qib_dev ; 

int FUNC10(int minor, const char *name,
		  const struct file_operations *fops,
		  struct cdev **cdevp, struct device **devp)
{
	const dev_t dev = FUNC2(FUNC1(qib_dev), minor);
	struct cdev *cdev;
	struct device *device = NULL;
	int ret;

	cdev = FUNC5();
	if (!cdev) {
		FUNC9("Could not allocate cdev for minor %d, %s\n",
		       minor, name);
		ret = -ENOMEM;
		goto done;
	}

	cdev->owner = THIS_MODULE;
	cdev->ops = fops;
	FUNC8(&cdev->kobj, name);

	ret = FUNC4(cdev, dev, 1);
	if (ret < 0) {
		FUNC9("Could not add cdev for minor %d, %s (err %d)\n",
		       minor, name, -ret);
		goto err_cdev;
	}

	device = FUNC7(qib_class, NULL, dev, NULL, "%s", name);
	if (!FUNC0(device))
		goto done;
	ret = FUNC3(device);
	device = NULL;
	FUNC9("Could not create device for minor %d, %s (err %d)\n",
	       minor, name, -ret);
err_cdev:
	FUNC6(cdev);
	cdev = NULL;
done:
	*cdevp = cdev;
	*devp = device;
	return ret;
}