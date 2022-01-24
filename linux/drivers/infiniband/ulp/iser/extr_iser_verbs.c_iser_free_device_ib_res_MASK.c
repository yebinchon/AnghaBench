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
struct iser_device {int comps_used; int /*<<< orphan*/ * pd; struct iser_comp* comps; int /*<<< orphan*/  event_handler; } ;
struct iser_comp {int /*<<< orphan*/ * cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_comp*) ; 

__attribute__((used)) static void FUNC4(struct iser_device *device)
{
	int i;

	for (i = 0; i < device->comps_used; i++) {
		struct iser_comp *comp = &device->comps[i];

		FUNC1(comp->cq);
		comp->cq = NULL;
	}

	FUNC2(&device->event_handler);
	FUNC0(device->pd);

	FUNC3(device->comps);
	device->comps = NULL;
	device->pd = NULL;
}