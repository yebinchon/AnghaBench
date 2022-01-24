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
typedef  int u16 ;
struct dme1737_data {int /*<<< orphan*/  has_features; } ;

/* Variables and functions */
 int DME1737_ID_1 ; 
 int DME1737_ID_2 ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SCH5027_ID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int force_id ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(int sio_cip, struct dme1737_data *data)
{
	int err = 0, reg;
	u16 addr;

	FUNC2(sio_cip);

	/*
	 * Check device ID
	 * We currently know about two kinds of DME1737 and SCH5027.
	 */
	reg = force_id ? force_id : FUNC4(sio_cip, 0x20);
	if (!(reg == DME1737_ID_1 || reg == DME1737_ID_2 ||
	      reg == SCH5027_ID)) {
		err = -ENODEV;
		goto exit;
	}

	/* Select logical device A (runtime registers) */
	FUNC5(sio_cip, 0x07, 0x0a);

	/* Get the base address of the runtime registers */
	addr = (FUNC4(sio_cip, 0x60) << 8) |
		FUNC4(sio_cip, 0x61);
	if (!addr) {
		err = -ENODEV;
		goto exit;
	}

	/*
	 * Read the runtime registers to determine which optional features
	 * are enabled and available. Bits [3:2] of registers 0x43-0x46 are set
	 * to '10' if the respective feature is enabled.
	 */
	if ((FUNC6(addr + 0x43) & 0x0c) == 0x08) /* fan6 */
		data->has_features |= FUNC0(5);
	if ((FUNC6(addr + 0x44) & 0x0c) == 0x08) /* pwm6 */
		data->has_features |= FUNC1(5);
	if ((FUNC6(addr + 0x45) & 0x0c) == 0x08) /* fan5 */
		data->has_features |= FUNC0(4);
	if ((FUNC6(addr + 0x46) & 0x0c) == 0x08) /* pwm5 */
		data->has_features |= FUNC1(4);

exit:
	FUNC3(sio_cip);

	return err;
}