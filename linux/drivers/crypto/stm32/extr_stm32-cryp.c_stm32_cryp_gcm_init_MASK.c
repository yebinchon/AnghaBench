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
typedef  int u32 ;
struct stm32_cryp {int /*<<< orphan*/  dev; int /*<<< orphan*/  gcm_ctr; TYPE_1__* areq; } ;
struct TYPE_2__ {int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYP_CR ; 
 int CR_CRYPEN ; 
 int CR_PH_INIT ; 
 int /*<<< orphan*/  GCM_CTR_INIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stm32_cryp*,int*) ; 
 int FUNC4 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_cryp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct stm32_cryp *cryp, u32 cfg)
{
	int ret;
	u32 iv[4];

	/* Phase 1 : init */
	FUNC2(iv, cryp->areq->iv, 12);
	iv[3] = FUNC0(GCM_CTR_INIT);
	cryp->gcm_ctr = GCM_CTR_INIT;
	FUNC3(cryp, iv);

	FUNC5(cryp, CRYP_CR, cfg | CR_PH_INIT | CR_CRYPEN);

	/* Wait for end of processing */
	ret = FUNC4(cryp);
	if (ret)
		FUNC1(cryp->dev, "Timeout (gcm init)\n");

	return ret;
}