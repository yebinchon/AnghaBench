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
typedef  int /*<<< orphan*/  u8 ;
struct bochs_device {int /*<<< orphan*/ * edid; int /*<<< orphan*/  connector; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bochs_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct bochs_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ),struct bochs_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct bochs_device *bochs)
{
	u8 header[8];

	if (!bochs->mmio)
		return -1;

	/* check header to detect whenever edid support is enabled in qemu */
	FUNC1(bochs, header, 0, FUNC0(header));
	if (FUNC3(header) != 8)
		return -1;

	FUNC4(bochs->edid);
	bochs->edid = FUNC2(&bochs->connector,
				      bochs_get_edid_block, bochs);
	if (bochs->edid == NULL)
		return -1;

	return 0;
}