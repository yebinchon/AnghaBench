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
struct stm32_cryp {int* last_ctr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYP_CR ; 
 int /*<<< orphan*/  CRYP_IV0LR ; 
 int /*<<< orphan*/  CRYP_IV0RR ; 
 int /*<<< orphan*/  CRYP_IV1LR ; 
 int /*<<< orphan*/  CRYP_IV1RR ; 
 int CR_CRYPEN ; 
 int /*<<< orphan*/  FUNC0 (struct stm32_cryp*,int*) ; 
 void* FUNC1 (struct stm32_cryp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_cryp*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct stm32_cryp *cryp)
{
	u32 cr;

	if (FUNC3(cryp->last_ctr[3] == 0xFFFFFFFF)) {
		cryp->last_ctr[3] = 0;
		cryp->last_ctr[2]++;
		if (!cryp->last_ctr[2]) {
			cryp->last_ctr[1]++;
			if (!cryp->last_ctr[1])
				cryp->last_ctr[0]++;
		}

		cr = FUNC1(cryp, CRYP_CR);
		FUNC2(cryp, CRYP_CR, cr & ~CR_CRYPEN);

		FUNC0(cryp, (u32 *)cryp->last_ctr);

		FUNC2(cryp, CRYP_CR, cr);
	}

	cryp->last_ctr[0] = FUNC1(cryp, CRYP_IV0LR);
	cryp->last_ctr[1] = FUNC1(cryp, CRYP_IV0RR);
	cryp->last_ctr[2] = FUNC1(cryp, CRYP_IV1LR);
	cryp->last_ctr[3] = FUNC1(cryp, CRYP_IV1RR);
}