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
struct stm32_cryp {scalar_t__ total_in; scalar_t__ authsize; TYPE_1__* caps; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ padding_wa; } ;

/* Variables and functions */
 scalar_t__ AES_BLOCK_SIZE ; 
 scalar_t__ CR_AES_CCM ; 
 scalar_t__ CR_AES_GCM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct stm32_cryp*) ; 
 scalar_t__ FUNC2 (struct stm32_cryp*) ; 
 scalar_t__ FUNC3 (struct stm32_cryp*) ; 
 scalar_t__ FUNC4 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_cryp*) ; 
 scalar_t__ FUNC6 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_cryp*) ; 
 void FUNC9 (struct stm32_cryp*) ; 
 void FUNC10 (struct stm32_cryp*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct stm32_cryp *cryp)
{
	if (FUNC11(!cryp->total_in)) {
		FUNC0(cryp->dev, "No more data to process\n");
		return;
	}

	if (FUNC11(cryp->total_in < AES_BLOCK_SIZE &&
		     (FUNC6(cryp) == CR_AES_GCM) &&
		     FUNC4(cryp))) {
		/* Padding for AES GCM encryption */
		if (cryp->caps->padding_wa)
			/* Special case 1 */
			return FUNC10(cryp);

		/* Setting padding bytes (NBBLB) */
		FUNC7(cryp);
	}

	if (FUNC11((cryp->total_in - cryp->authsize < AES_BLOCK_SIZE) &&
		     (FUNC6(cryp) == CR_AES_CCM) &&
		     FUNC3(cryp))) {
		/* Padding for AES CCM decryption */
		if (cryp->caps->padding_wa)
			/* Special case 2 */
			return FUNC9(cryp);

		/* Setting padding bytes (NBBLB) */
		FUNC7(cryp);
	}

	if (FUNC1(cryp) && FUNC2(cryp))
		FUNC5(cryp);

	FUNC8(cryp);
}