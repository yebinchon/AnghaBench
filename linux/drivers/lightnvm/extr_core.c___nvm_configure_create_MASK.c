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
struct nvm_ioctl_create {int /*<<< orphan*/  dev; } ;
struct nvm_dev {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvm_dev*,struct nvm_ioctl_create*) ; 
 struct nvm_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvm_free ; 
 int /*<<< orphan*/  nvm_lock ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nvm_ioctl_create *create)
{
	struct nvm_dev *dev;
	int ret;

	FUNC0(&nvm_lock);
	dev = FUNC4(create->dev);
	FUNC6(&nvm_lock);

	if (!dev) {
		FUNC5("device not found\n");
		return -EINVAL;
	}

	FUNC1(&dev->ref);
	ret = FUNC3(dev, create);
	if (ret)
		FUNC2(&dev->ref, nvm_free);

	return ret;
}