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
typedef  int u8 ;
struct anx78xx {int /*<<< orphan*/ * edid; int /*<<< orphan*/ * map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 size_t I2C_IDX_TX_P2 ; 
 int /*<<< orphan*/  SP_COMMON_INT_STATUS4_REG ; 
 int SP_HPD_LOST ; 
 int SP_HPD_PLUG ; 
 int /*<<< orphan*/  FUNC2 (struct anx78xx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC5(struct anx78xx *anx78xx, u8 irq)
{
	bool event = false;
	int err;

	FUNC0("Handle common interrupt 4: %02x\n", irq);

	err = FUNC4(anx78xx->map[I2C_IDX_TX_P2],
			   SP_COMMON_INT_STATUS4_REG, irq);
	if (err) {
		FUNC1("Failed to write SP_COMMON_INT_STATUS4 %d\n", err);
		return event;
	}

	if (irq & SP_HPD_LOST) {
		FUNC0("IRQ: Hot plug detect - cable is pulled out\n");
		event = true;
		FUNC2(anx78xx);
		/* Free cached EDID */
		FUNC3(anx78xx->edid);
		anx78xx->edid = NULL;
	} else if (irq & SP_HPD_PLUG) {
		FUNC0("IRQ: Hot plug detect - cable plug\n");
		event = true;
	}

	return event;
}