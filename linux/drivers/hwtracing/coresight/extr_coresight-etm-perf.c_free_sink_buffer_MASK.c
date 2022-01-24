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
struct etm_event_data {int /*<<< orphan*/  snk_config; int /*<<< orphan*/  mask; } ;
struct coresight_device {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_buffer ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct coresight_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct etm_event_data*,int) ; 
 TYPE_1__* FUNC5 (struct coresight_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct etm_event_data *event_data)
{
	int cpu;
	cpumask_t *mask = &event_data->mask;
	struct coresight_device *sink;

	if (FUNC0(FUNC2(mask)))
		return;

	if (!event_data->snk_config)
		return;

	cpu = FUNC3(mask);
	sink = FUNC1(FUNC4(event_data, cpu));
	FUNC5(sink)->free_buffer(event_data->snk_config);
}