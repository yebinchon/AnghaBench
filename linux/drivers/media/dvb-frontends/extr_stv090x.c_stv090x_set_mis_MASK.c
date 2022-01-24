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
struct stv090x_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  FILTER_EN_FIELD ; 
 int /*<<< orphan*/  ISIBITENA ; 
 int /*<<< orphan*/  ISIENTRY ; 
 int /*<<< orphan*/  PDELCTRL1 ; 
 int FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,...) ; 

__attribute__((used)) static int FUNC4(struct stv090x_state *state, int mis)
{
	u32 reg;

	if (mis < 0 || mis > 255) {
		FUNC3(FE_DEBUG, 1, "Disable MIS filtering");
		reg = FUNC0(state, PDELCTRL1);
		FUNC1(reg, FILTER_EN_FIELD, 0x00);
		if (FUNC2(state, PDELCTRL1, reg) < 0)
			goto err;
	} else {
		FUNC3(FE_DEBUG, 1, "Enable MIS filtering - %d", mis);
		reg = FUNC0(state, PDELCTRL1);
		FUNC1(reg, FILTER_EN_FIELD, 0x01);
		if (FUNC2(state, PDELCTRL1, reg) < 0)
			goto err;
		if (FUNC2(state, ISIENTRY, mis) < 0)
			goto err;
		if (FUNC2(state, ISIBITENA, 0xff) < 0)
			goto err;
	}
	return 0;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}