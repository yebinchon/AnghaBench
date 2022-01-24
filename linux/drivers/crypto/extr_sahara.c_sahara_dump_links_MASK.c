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
struct sahara_dev {int /*<<< orphan*/  device; TYPE_1__** hw_link; int /*<<< orphan*/ * hw_phys_link; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; int /*<<< orphan*/  p; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int SAHARA_MAX_HW_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC2(struct sahara_dev *dev)
{
	int i;

	if (!FUNC0(DEBUG))
		return;

	for (i = 0; i < SAHARA_MAX_HW_LINK; i++) {
		FUNC1(dev->device, "Link (%d) (%pad):\n",
			i, &dev->hw_phys_link[i]);
		FUNC1(dev->device, "\tlen = %u\n", dev->hw_link[i]->len);
		FUNC1(dev->device, "\tp = 0x%08x\n", dev->hw_link[i]->p);
		FUNC1(dev->device, "\tnext = 0x%08x\n",
			dev->hw_link[i]->next);
	}
	FUNC1(dev->device, "\n");
}