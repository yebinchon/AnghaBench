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
struct cma3000_accl_data {int suspended; int /*<<< orphan*/  mutex; scalar_t__ opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cma3000_accl_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct cma3000_accl_data *data)
{
	FUNC1(&data->mutex);

	if (!data->suspended && data->opened)
		FUNC0(data);

	data->suspended = true;

	FUNC2(&data->mutex);
}