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
struct cs_hsi_iface {int dummy; } ;

/* Variables and functions */
 int CS_CMD_MASK ; 
 int CS_PARAM_MASK ; 
 int CS_TX_DATA_READY ; 
 int EINVAL ; 
#define  TARGET_LOCAL 129 
 int TARGET_MASK ; 
#define  TARGET_REMOTE 128 
 int FUNC0 (struct cs_hsi_iface*,int) ; 
 int FUNC1 (struct cs_hsi_iface*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct cs_hsi_iface *hi, u32 cmd)
{
	int ret = 0;

	FUNC2();
	switch (cmd & TARGET_MASK) {
	case TARGET_REMOTE:
		ret = FUNC0(hi, cmd);
		break;
	case TARGET_LOCAL:
		if ((cmd & CS_CMD_MASK) == CS_TX_DATA_READY)
			ret = FUNC1(hi, cmd & CS_PARAM_MASK);
		else
			ret = -EINVAL;
		break;
	default:
		ret = -EINVAL;
		break;
	}
	FUNC3();

	return ret;
}