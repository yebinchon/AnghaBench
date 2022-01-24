#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* parent; } ;
struct hsi_controller {unsigned int num_ports; TYPE_2__ device; TYPE_1__** port; } ;
struct TYPE_4__ {TYPE_2__ device; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_controller*) ; 

int FUNC3(struct hsi_controller *hsi)
{
	unsigned int i;
	int err;

	err = FUNC0(&hsi->device);
	if (err < 0)
		return err;
	for (i = 0; i < hsi->num_ports; i++) {
		hsi->port[i]->device.parent = &hsi->device;
		err = FUNC0(&hsi->port[i]->device);
		if (err < 0)
			goto out;
	}
	/* Populate HSI bus with HSI clients */
	FUNC2(hsi);

	return 0;
out:
	while (i-- > 0)
		FUNC1(&hsi->port[i]->device);
	FUNC1(&hsi->device);

	return err;
}