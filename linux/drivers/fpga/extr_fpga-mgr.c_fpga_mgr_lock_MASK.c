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
struct fpga_manager {int /*<<< orphan*/  dev; int /*<<< orphan*/  ref_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct fpga_manager *mgr)
{
	if (!FUNC1(&mgr->ref_mutex)) {
		FUNC0(&mgr->dev, "FPGA manager is in use.\n");
		return -EBUSY;
	}

	return 0;
}