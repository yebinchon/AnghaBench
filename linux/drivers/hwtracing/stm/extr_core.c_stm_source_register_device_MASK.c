#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * class; } ;
struct stm_source_device {TYPE_1__ dev; struct stm_source_data* data; int /*<<< orphan*/  link_entry; int /*<<< orphan*/  link_lock; int /*<<< orphan*/  output; } ;
struct stm_source_data {struct stm_source_device* src; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct stm_source_device* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm_core_up ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm_source_class ; 
 int /*<<< orphan*/  stm_source_device_release ; 

int FUNC10(struct device *parent,
			       struct stm_source_data *data)
{
	struct stm_source_device *src;
	int err;

	if (!stm_core_up)
		return -EPROBE_DEFER;

	src = FUNC4(sizeof(*src), GFP_KERNEL);
	if (!src)
		return -ENOMEM;

	FUNC2(&src->dev);
	src->dev.class = &stm_source_class;
	src->dev.parent = parent;
	src->dev.release = stm_source_device_release;

	err = FUNC3(&src->dev.kobj, "%s", data->name);
	if (err)
		goto err;

	FUNC6(&src->dev);
	FUNC5(&src->dev);

	err = FUNC1(&src->dev);
	if (err)
		goto err;

	FUNC9(&src->output);
	FUNC8(&src->link_lock);
	FUNC0(&src->link_entry);
	src->data = data;
	data->src = src;

	return 0;

err:
	FUNC7(&src->dev);

	return err;
}