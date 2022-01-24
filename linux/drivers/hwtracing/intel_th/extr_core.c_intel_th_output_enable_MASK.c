#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int type; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ output; } ;
struct intel_th {int num_thdevs; struct intel_th_device** thdev; } ;
struct TYPE_6__ {scalar_t__ type; unsigned int otype; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENODEV ; 
 scalar_t__ INTEL_TH_OUTPUT ; 
 scalar_t__ FUNC1 (struct intel_th_device*) ; 
 int FUNC2 (struct intel_th_device*) ; 
 struct intel_th_device* FUNC3 (struct intel_th*,TYPE_2__*) ; 
 TYPE_2__* intel_th_subdevices ; 

int FUNC4(struct intel_th *th, unsigned int otype)
{
	struct intel_th_device *thdev;
	int src = 0, dst = 0;

	for (src = 0, dst = 0; dst <= th->num_thdevs; src++, dst++) {
		for (; src < FUNC0(intel_th_subdevices); src++) {
			if (intel_th_subdevices[src].type != INTEL_TH_OUTPUT)
				continue;

			if (intel_th_subdevices[src].otype != otype)
				continue;

			break;
		}

		/* no unallocated matching subdevices */
		if (src == FUNC0(intel_th_subdevices))
			return -ENODEV;

		for (; dst < th->num_thdevs; dst++) {
			if (th->thdev[dst]->type != INTEL_TH_OUTPUT)
				continue;

			if (th->thdev[dst]->output.type != otype)
				continue;

			break;
		}

		/*
		 * intel_th_subdevices[src] matches our requirements and is
		 * not matched in th::thdev[]
		 */
		if (dst == th->num_thdevs)
			goto found;
	}

	return -ENODEV;

found:
	thdev = FUNC3(th, &intel_th_subdevices[src]);
	if (FUNC1(thdev))
		return FUNC2(thdev);

	th->thdev[th->num_thdevs++] = thdev;

	return 0;
}