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
struct stm32_cryp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_AES_CBC ; 
 int /*<<< orphan*/  CR_AES_CCM ; 
 int /*<<< orphan*/  CR_AES_CTR ; 
 int /*<<< orphan*/  CR_AES_ECB ; 
 int /*<<< orphan*/  CR_AES_GCM ; 
 int /*<<< orphan*/  CR_AES_UNKNOWN ; 
 int /*<<< orphan*/  CR_DES_CBC ; 
 int /*<<< orphan*/  CR_DES_ECB ; 
 int /*<<< orphan*/  CR_TDES_CBC ; 
 int /*<<< orphan*/  CR_TDES_ECB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 scalar_t__ FUNC2 (struct stm32_cryp*) ; 
 scalar_t__ FUNC3 (struct stm32_cryp*) ; 
 scalar_t__ FUNC4 (struct stm32_cryp*) ; 
 scalar_t__ FUNC5 (struct stm32_cryp*) ; 
 scalar_t__ FUNC6 (struct stm32_cryp*) ; 
 scalar_t__ FUNC7 (struct stm32_cryp*) ; 
 scalar_t__ FUNC8 (struct stm32_cryp*) ; 

__attribute__((used)) static u32 FUNC9(struct stm32_cryp *cryp)
{
	if (FUNC1(cryp) && FUNC6(cryp))
		return CR_AES_ECB;

	if (FUNC1(cryp) && FUNC2(cryp))
		return CR_AES_CBC;

	if (FUNC1(cryp) && FUNC4(cryp))
		return CR_AES_CTR;

	if (FUNC1(cryp) && FUNC7(cryp))
		return CR_AES_GCM;

	if (FUNC1(cryp) && FUNC3(cryp))
		return CR_AES_CCM;

	if (FUNC5(cryp) && FUNC6(cryp))
		return CR_DES_ECB;

	if (FUNC5(cryp) && FUNC2(cryp))
		return CR_DES_CBC;

	if (FUNC8(cryp) && FUNC6(cryp))
		return CR_TDES_ECB;

	if (FUNC8(cryp) && FUNC2(cryp))
		return CR_TDES_CBC;

	FUNC0(cryp->dev, "Unknown mode\n");
	return CR_AES_UNKNOWN;
}