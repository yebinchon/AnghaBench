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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;

/* Variables and functions */
 int CAAM_CMD_SZ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ JRSTA_SSRC_JUMP_HALT_CC ; 
 int RNG4_MAX_HANDLES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC6(struct device *ctrldev, int state_handle_mask)
{
	u32 *desc, status;
	int sh_idx, ret = 0;

	desc = FUNC4(CAAM_CMD_SZ * 3, GFP_KERNEL);
	if (!desc)
		return -ENOMEM;

	for (sh_idx = 0; sh_idx < RNG4_MAX_HANDLES; sh_idx++) {
		/*
		 * If the corresponding bit is set, then it means the state
		 * handle was initialized by us, and thus it needs to be
		 * deinitialized as well
		 */
		if ((1 << sh_idx) & state_handle_mask) {
			/*
			 * Create the descriptor for deinstantating this state
			 * handle
			 */
			FUNC0(desc, sh_idx);

			/* Try to run it through DECO0 */
			ret = FUNC5(ctrldev, desc, &status);

			if (ret ||
			    (status && status != JRSTA_SSRC_JUMP_HALT_CC)) {
				FUNC1(ctrldev,
					"Failed to deinstantiate RNG4 SH%d\n",
					sh_idx);
				break;
			}
			FUNC2(ctrldev, "Deinstantiated RNG4 SH%d\n", sh_idx);
		}
	}

	FUNC3(desc);

	return ret;
}