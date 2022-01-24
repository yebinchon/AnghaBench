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
struct stm32_cryp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYP_IV0LR ; 
 int /*<<< orphan*/  CRYP_IV0RR ; 
 int /*<<< orphan*/  CRYP_IV1LR ; 
 int /*<<< orphan*/  CRYP_IV1RR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_cryp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct stm32_cryp *cryp, u32 *iv)
{
	if (!iv)
		return;

	FUNC2(cryp, CRYP_IV0LR, FUNC0(*iv++));
	FUNC2(cryp, CRYP_IV0RR, FUNC0(*iv++));

	if (FUNC1(cryp)) {
		FUNC2(cryp, CRYP_IV1LR, FUNC0(*iv++));
		FUNC2(cryp, CRYP_IV1RR, FUNC0(*iv++));
	}
}