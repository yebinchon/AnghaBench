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
struct w83793_data {int /*<<< orphan*/  kref; int /*<<< orphan*/  watchdog_is_open; TYPE_1__* client; scalar_t__ watchdog_expect_close; } ;
struct inode {int dummy; } ;
struct file {struct w83793_data* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w83793_release_resources ; 
 int /*<<< orphan*/  watchdog_data_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct w83793_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct w83793_data*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct w83793_data *data = filp->private_data;

	if (data->watchdog_expect_close) {
		FUNC5(data);
		data->watchdog_expect_close = 0;
	} else {
		FUNC6(data);
		FUNC1(&data->client->dev,
			"unexpected close, not stopping watchdog!\n");
	}

	FUNC0(0, &data->watchdog_is_open);

	/* Decrease data reference counter */
	FUNC3(&watchdog_data_mutex);
	FUNC2(&data->kref, w83793_release_resources);
	FUNC4(&watchdog_data_mutex);

	return 0;
}