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
struct edac_device_ctl_info {int nr_instances; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct edac_device_ctl_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_device_ctl_info*,int) ; 

__attribute__((used)) static int FUNC3(struct edac_device_ctl_info *edac_dev)
{
	int i, j;
	int err;

	FUNC0(0, "\n");

	/* iterate over creation of the instances */
	for (i = 0; i < edac_dev->nr_instances; i++) {
		err = FUNC1(edac_dev, i);
		if (err) {
			/* unwind previous instances on error */
			for (j = 0; j < i; j++)
				FUNC2(edac_dev, j);
			return err;
		}
	}

	return 0;
}