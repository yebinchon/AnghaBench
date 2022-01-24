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
typedef  int u32 ;
struct mxl {int /*<<< orphan*/  i2cdev; } ;
typedef  enum MXL_HYDRA_TS_DRIVE_STRENGTH_E { ____Placeholder_MXL_HYDRA_TS_DRIVE_STRENGTH_E } MXL_HYDRA_TS_DRIVE_STRENGTH_E ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mxl*,int,int*) ; 
 int FUNC2 (struct mxl*,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct mxl *state,
		enum MXL_HYDRA_TS_DRIVE_STRENGTH_E ts_drive_strength)
{
	int stat = 0;
	u32 val;

	FUNC1(state, 0x90000194, &val);
	FUNC0(state->i2cdev, "DIGIO = %08x\n", val);
	FUNC0(state->i2cdev, "set drive_strength = %u\n", ts_drive_strength);


	stat |= FUNC2(state, 0x90000194, 0, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x90000194, 20, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x90000194, 24, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x90000198, 12, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x90000198, 16, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x90000198, 20, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x90000198, 24, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x9000019C, 0, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x9000019C, 4, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x9000019C, 8, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x9000019C, 24, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x9000019C, 28, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x900001A0, 0, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x900001A0, 4, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x900001A0, 20, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x900001A0, 24, 3, ts_drive_strength);
	stat |= FUNC2(state, 0x900001A0, 28, 3, ts_drive_strength);

	return stat;
}