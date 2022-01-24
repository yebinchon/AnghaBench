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
typedef  int /*<<< orphan*/  u32 ;
struct hideep_ts {int /*<<< orphan*/  nvm_mask; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIDEEP_FLASH_CFG ; 
 int /*<<< orphan*/  HIDEEP_NVM_DEFAULT_PAGE ; 
 int /*<<< orphan*/  HIDEEP_NVM_MASK_OFS ; 
 int /*<<< orphan*/  HIDEEP_NVM_SFR_RPAGE ; 
 int /*<<< orphan*/  HIDEEP_NVM_SFR_WPAGE ; 
 int /*<<< orphan*/  HIDEEP_PROT_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hideep_ts*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hideep_ts*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hideep_ts *ts)
{
	u32 unmask_code;

	FUNC5(ts, HIDEEP_FLASH_CFG, HIDEEP_NVM_SFR_RPAGE);
	FUNC4(ts, 0x0000000C, &unmask_code);
	FUNC5(ts, HIDEEP_FLASH_CFG, HIDEEP_NVM_DEFAULT_PAGE);

	/* make it unprotected code */
	unmask_code &= ~HIDEEP_PROT_MODE;

	/* compare unmask code */
	if (unmask_code != ts->nvm_mask)
		FUNC3(&ts->client->dev,
			 "read mask code different %#08x vs %#08x",
			 unmask_code, ts->nvm_mask);

	FUNC5(ts, HIDEEP_FLASH_CFG, HIDEEP_NVM_SFR_WPAGE);
	FUNC2(0);

	FUNC0(HIDEEP_NVM_MASK_OFS, ts->nvm_mask);
	FUNC1();
	FUNC5(ts, HIDEEP_FLASH_CFG, HIDEEP_NVM_DEFAULT_PAGE);
}