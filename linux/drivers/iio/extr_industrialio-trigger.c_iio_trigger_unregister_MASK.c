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
struct iio_trigger {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_trigger_ida ; 
 int /*<<< orphan*/  iio_trigger_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct iio_trigger *trig_info)
{
	FUNC3(&iio_trigger_list_lock);
	FUNC2(&trig_info->list);
	FUNC4(&iio_trigger_list_lock);

	FUNC1(&iio_trigger_ida, trig_info->id);
	/* Possible issue in here */
	FUNC0(&trig_info->dev);
}