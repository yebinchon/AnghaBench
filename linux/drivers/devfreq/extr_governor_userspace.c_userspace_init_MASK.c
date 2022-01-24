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
struct userspace_data {int valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct devfreq {TYPE_1__ dev; struct userspace_data* data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_group ; 
 struct userspace_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct devfreq *devfreq)
{
	int err = 0;
	struct userspace_data *data = FUNC0(sizeof(struct userspace_data),
					      GFP_KERNEL);

	if (!data) {
		err = -ENOMEM;
		goto out;
	}
	data->valid = false;
	devfreq->data = data;

	err = FUNC1(&devfreq->dev.kobj, &dev_attr_group);
out:
	return err;
}