#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int crt; int tv; int panel; } ;
struct TYPE_6__ {TYPE_2__ i2c_indices; } ;
struct TYPE_4__ {scalar_t__ output1_script_ptr; scalar_t__ output0_script_ptr; } ;
struct dcb_table {int dummy; } ;
struct nvbios {TYPE_3__ legacy; TYPE_1__ tmds; struct dcb_table dcb; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCB_OUTPUT_ANALOG ; 
 int /*<<< orphan*/  DCB_OUTPUT_TMDS ; 
 int /*<<< orphan*/  DCB_OUTPUT_TV ; 
 int /*<<< orphan*/  FUNC0 (struct dcb_table*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC1 (struct drm_device*,int) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct drm_device *dev, struct nvbios *bios)
{
	struct dcb_table *dcb = &bios->dcb;
	int all_heads = (FUNC2(dev) ? 3 : 1);

#ifdef __powerpc__
	/* Apple iMac G4 NV17 */
	if (of_machine_is_compatible("PowerMac4,5")) {
		fabricate_dcb_output(dcb, DCB_OUTPUT_TMDS, 0, all_heads, 1);
		fabricate_dcb_output(dcb, DCB_OUTPUT_ANALOG, 1, all_heads, 2);
		return;
	}
#endif

	/* Make up some sane defaults */
	FUNC0(dcb, DCB_OUTPUT_ANALOG,
			     bios->legacy.i2c_indices.crt, 1, 1);

	if (FUNC1(dev, bios->legacy.i2c_indices.tv) >= 0)
		FUNC0(dcb, DCB_OUTPUT_TV,
				     bios->legacy.i2c_indices.tv,
				     all_heads, 0);

	else if (bios->tmds.output0_script_ptr ||
		 bios->tmds.output1_script_ptr)
		FUNC0(dcb, DCB_OUTPUT_TMDS,
				     bios->legacy.i2c_indices.panel,
				     all_heads, 1);
}