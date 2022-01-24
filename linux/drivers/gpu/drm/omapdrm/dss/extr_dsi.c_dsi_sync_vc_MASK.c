#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dsi_data {TYPE_1__* vc; } ;
struct TYPE_2__ {int source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DSI_VC_SOURCE_L4 129 
#define  DSI_VC_SOURCE_VP 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*) ; 
 int FUNC3 (struct dsi_data*,int) ; 
 int FUNC4 (struct dsi_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int) ; 
 int FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct dsi_data *dsi, int channel)
{
	FUNC1(!FUNC2(dsi));

	FUNC1(FUNC6());

	if (!FUNC5(dsi, channel))
		return 0;

	switch (dsi->vc[channel].source) {
	case DSI_VC_SOURCE_VP:
		return FUNC4(dsi, channel);
	case DSI_VC_SOURCE_L4:
		return FUNC3(dsi, channel);
	default:
		FUNC0();
		return -EINVAL;
	}
}