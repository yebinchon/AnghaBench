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
struct nvm_geo {int /*<<< orphan*/  num_ch; int /*<<< orphan*/  all_luns; int /*<<< orphan*/  num_chk; int /*<<< orphan*/  ws_opt; int /*<<< orphan*/  ws_min; int /*<<< orphan*/  vmnt; int /*<<< orphan*/  minor_ver_id; int /*<<< orphan*/  major_ver_id; } ;
struct nvm_dev {struct nvm_geo geo; int /*<<< orphan*/  name; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* identity ) (struct nvm_dev*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nvm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nvm_dev*) ; 

__attribute__((used)) static int FUNC5(struct nvm_dev *dev)
{
	struct nvm_geo *geo = &dev->geo;
	int ret = -EINVAL;

	if (dev->ops->identity(dev)) {
		FUNC2("device could not be identified\n");
		goto err;
	}

	FUNC1("ver:%u.%u nvm_vendor:%x\n", geo->major_ver_id,
			geo->minor_ver_id, geo->vmnt);

	ret = FUNC0(dev);
	if (ret) {
		FUNC2("could not initialize core structures.\n");
		goto err;
	}

	FUNC3("registered %s [%u/%u/%u/%u/%u]\n",
			dev->name, dev->geo.ws_min, dev->geo.ws_opt,
			dev->geo.num_chk, dev->geo.all_luns,
			dev->geo.num_ch);
	return 0;
err:
	FUNC2("failed to initialize nvm\n");
	return ret;
}