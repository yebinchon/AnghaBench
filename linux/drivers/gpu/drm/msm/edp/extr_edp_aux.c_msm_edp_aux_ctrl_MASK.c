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
typedef  int /*<<< orphan*/  u32 ;
struct edp_aux {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  EDP_AUX_CTRL_ENABLE ; 
 int /*<<< orphan*/  EDP_AUX_CTRL_RESET ; 
 scalar_t__ REG_EDP_AUX_CTRL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct edp_aux *aux, int enable)
{
	u32 data;

	FUNC0("enable=%d", enable);
	data = FUNC1(aux->base + REG_EDP_AUX_CTRL);

	if (enable) {
		data |= EDP_AUX_CTRL_RESET;
		FUNC2(aux->base + REG_EDP_AUX_CTRL, data);
		/* Make sure full reset */
		FUNC4();
		FUNC3(500, 1000);

		data &= ~EDP_AUX_CTRL_RESET;
		data |= EDP_AUX_CTRL_ENABLE;
		FUNC2(aux->base + REG_EDP_AUX_CTRL, data);
	} else {
		data &= ~EDP_AUX_CTRL_ENABLE;
		FUNC2(aux->base + REG_EDP_AUX_CTRL, data);
	}
}