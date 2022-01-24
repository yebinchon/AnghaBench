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
struct vmbus_channel {int /*<<< orphan*/  percpu_list; } ;
struct hv_per_cpu_context {int /*<<< orphan*/  chan_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_context; } ;

/* Variables and functions */
 TYPE_1__ hv_context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hv_per_cpu_context* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	struct vmbus_channel *channel = arg;
	struct hv_per_cpu_context *hv_cpu
		= FUNC1(hv_context.cpu_context);

	FUNC0(&channel->percpu_list, &hv_cpu->chan_list);
}