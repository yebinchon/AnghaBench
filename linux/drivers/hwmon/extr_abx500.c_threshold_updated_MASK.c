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
struct abx500_temp {int monitored_sensors; scalar_t__* max; scalar_t__* min; int work_active; int /*<<< orphan*/  work; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct abx500_temp*) ; 

__attribute__((used)) static void FUNC3(struct abx500_temp *data)
{
	int i;
	for (i = 0; i < data->monitored_sensors; i++)
		if (data->max[i] != 0 || data->min[i] != 0) {
			FUNC2(data);
			return;
		}

	FUNC1(&data->pdev->dev, "No active thresholds.\n");
	FUNC0(&data->work);
	data->work_active = false;
}