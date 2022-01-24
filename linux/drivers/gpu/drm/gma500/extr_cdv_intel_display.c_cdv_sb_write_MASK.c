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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SB_ADDR ; 
 int SB_BUSY ; 
 int /*<<< orphan*/  SB_BYTE_ENABLE ; 
 int /*<<< orphan*/  SB_DATA ; 
 int /*<<< orphan*/  SB_DEST ; 
 int SB_DEST_DPLL ; 
 int /*<<< orphan*/  SB_OPCODE ; 
 int SB_OPCODE_WRITE ; 
 int /*<<< orphan*/  SB_PCKT ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct drm_device*,int,int*) ; 
 int FUNC6 (int,int) ; 

int FUNC7(struct drm_device *dev, u32 reg, u32 val)
{
	int ret;
	static bool dpio_debug = true;
	u32 temp;

	if (dpio_debug) {
		if (FUNC5(dev, reg, &temp) == 0)
			FUNC0("0x%08x: 0x%08x (before)\n", reg, temp);
		FUNC0("0x%08x: 0x%08x\n", reg, val);
	}

	ret = FUNC6((FUNC2(SB_PCKT) & SB_BUSY) == 0, 1000);
	if (ret) {
		FUNC1("timeout waiting for SB to idle before write\n");
		return ret;
	}

	FUNC3(SB_ADDR, reg);
	FUNC3(SB_DATA, val);
	FUNC3(SB_PCKT,
		   FUNC4(SB_OPCODE_WRITE, SB_OPCODE) |
		   FUNC4(SB_DEST_DPLL, SB_DEST) |
		   FUNC4(0xf, SB_BYTE_ENABLE));

	ret = FUNC6((FUNC2(SB_PCKT) & SB_BUSY) == 0, 1000);
	if (ret) {
		FUNC1("timeout waiting for SB to idle after write\n");
		return ret;
	}

	if (dpio_debug) {
		if (FUNC5(dev, reg, &temp) == 0)
			FUNC0("0x%08x: 0x%08x (after)\n", reg, temp);
	}

	return 0;
}