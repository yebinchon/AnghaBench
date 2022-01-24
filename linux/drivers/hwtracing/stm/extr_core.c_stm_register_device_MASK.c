#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * class; int /*<<< orphan*/  devt; } ;
struct stm_device {scalar_t__ major; unsigned int sw_nmasters; TYPE_1__ dev; struct stm_data* data; struct module* owner; int /*<<< orphan*/  policy_mutex; int /*<<< orphan*/  mc_lock; int /*<<< orphan*/  link_list; int /*<<< orphan*/  link_lock; int /*<<< orphan*/  link_mutex; } ;
struct stm_data {int sw_end; int sw_start; int /*<<< orphan*/  name; struct stm_device* stm; int /*<<< orphan*/  sw_nchannels; int /*<<< orphan*/  packet; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm_class ; 
 int /*<<< orphan*/  stm_core_up ; 
 int /*<<< orphan*/  stm_device_release ; 
 int /*<<< orphan*/  stm_fops ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct stm_device*) ; 
 struct stm_device* FUNC16 (int) ; 

int FUNC17(struct device *parent, struct stm_data *stm_data,
			struct module *owner)
{
	struct stm_device *stm;
	unsigned int nmasters;
	int err = -ENOMEM;

	if (!stm_core_up)
		return -EPROBE_DEFER;

	if (!stm_data->packet || !stm_data->sw_nchannels)
		return -EINVAL;

	nmasters = stm_data->sw_end - stm_data->sw_start + 1;
	stm = FUNC16(sizeof(*stm) + nmasters * sizeof(void *));
	if (!stm)
		return -ENOMEM;

	stm->major = FUNC12(0, stm_data->name, &stm_fops);
	if (stm->major < 0)
		goto err_free;

	FUNC3(&stm->dev);
	stm->dev.devt = FUNC1(stm->major, 0);
	stm->dev.class = &stm_class;
	stm->dev.parent = parent;
	stm->dev.release = stm_device_release;

	FUNC5(&stm->link_mutex);
	FUNC13(&stm->link_lock);
	FUNC0(&stm->link_list);

	/* initialize the object before it is accessible via sysfs */
	FUNC13(&stm->mc_lock);
	FUNC5(&stm->policy_mutex);
	stm->sw_nmasters = nmasters;
	stm->owner = owner;
	stm->data = stm_data;
	stm_data->stm = stm;

	err = FUNC4(&stm->dev.kobj, "%s", stm_data->name);
	if (err)
		goto err_device;

	err = FUNC2(&stm->dev);
	if (err)
		goto err_device;

	/*
	 * Use delayed autosuspend to avoid bouncing back and forth
	 * on recurring character device writes, with the initial
	 * delay time of 2 seconds.
	 */
	FUNC7(&stm->dev);
	FUNC10(&stm->dev);
	FUNC8(&stm->dev, 2000);
	FUNC9(&stm->dev);
	FUNC6(&stm->dev);

	return 0;

err_device:
	FUNC14(stm->major, stm_data->name);

	/* matches device_initialize() above */
	FUNC11(&stm->dev);
err_free:
	FUNC15(stm);

	return err;
}