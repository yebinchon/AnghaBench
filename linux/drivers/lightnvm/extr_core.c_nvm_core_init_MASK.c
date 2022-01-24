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
struct nvm_geo {int /*<<< orphan*/  all_luns; } ;
struct nvm_dev {int /*<<< orphan*/  lun_map; int /*<<< orphan*/  lock; int /*<<< orphan*/  mlock; int /*<<< orphan*/  targets; int /*<<< orphan*/  area_list; struct nvm_geo geo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nvm_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nvm_dev *dev)
{
	struct nvm_geo *geo = &dev->geo;
	int ret;

	dev->lun_map = FUNC2(FUNC0(geo->all_luns),
					sizeof(unsigned long), GFP_KERNEL);
	if (!dev->lun_map)
		return -ENOMEM;

	FUNC1(&dev->area_list);
	FUNC1(&dev->targets);
	FUNC4(&dev->mlock);
	FUNC6(&dev->lock);

	ret = FUNC5(dev);
	if (ret)
		goto err_fmtype;

	return 0;
err_fmtype:
	FUNC3(dev->lun_map);
	return ret;
}