#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct extcon_dev {int state; TYPE_1__ dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  nh_all; int /*<<< orphan*/ * nh; } ;
typedef  int /*<<< orphan*/  state_buf ;
typedef  int /*<<< orphan*/  name_buf ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (struct extcon_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,struct extcon_dev*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 

int FUNC13(struct extcon_dev *edev, unsigned int id)
{
	char name_buf[120];
	char state_buf[120];
	char *prop_buf;
	char *envp[3];
	int env_offset = 0;
	int length;
	int index;
	int state;
	unsigned long flags;

	if (!edev)
		return -EINVAL;

	index = FUNC2(edev, id);
	if (index < 0)
		return index;

	FUNC10(&edev->lock, flags);
	state = !!(edev->state & FUNC0(index));
	FUNC11(&edev->lock, flags);

	/*
	 * Call functions in a raw notifier chain for the specific one
	 * external connector.
	 */
	FUNC8(&edev->nh[index], state, edev);

	/*
	 * Call functions in a raw notifier chain for the all supported
	 * external connectors.
	 */
	FUNC8(&edev->nh_all, state, edev);

	FUNC10(&edev->lock, flags);
	/* This could be in interrupt handler */
	prop_buf = (char *)FUNC4(GFP_ATOMIC);
	if (!prop_buf) {
		/* Unlock early before uevent */
		FUNC11(&edev->lock, flags);

		FUNC1(&edev->dev, "out of memory in extcon_set_state\n");
		FUNC5(&edev->dev.kobj, KOBJ_CHANGE);

		return -ENOMEM;
	}

	length = FUNC7(&edev->dev, NULL, prop_buf);
	if (length > 0) {
		if (prop_buf[length - 1] == '\n')
			prop_buf[length - 1] = 0;
		FUNC9(name_buf, sizeof(name_buf), "NAME=%s", prop_buf);
		envp[env_offset++] = name_buf;
	}

	length = FUNC12(&edev->dev, NULL, prop_buf);
	if (length > 0) {
		if (prop_buf[length - 1] == '\n')
			prop_buf[length - 1] = 0;
		FUNC9(state_buf, sizeof(state_buf), "STATE=%s", prop_buf);
		envp[env_offset++] = state_buf;
	}
	envp[env_offset] = NULL;

	/* Unlock early before uevent */
	FUNC11(&edev->lock, flags);
	FUNC6(&edev->dev.kobj, KOBJ_CHANGE, envp);
	FUNC3((unsigned long)prop_buf);

	return 0;
}