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
struct mtk_sha_rec {int flags; int /*<<< orphan*/  done_task; int /*<<< orphan*/  id; struct mtk_cryp* cryp; } ;
struct mtk_cryp {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MTK_CNT_RST ; 
 int MTK_RDR_PROC_MODE ; 
 int MTK_RDR_PROC_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SHA_FLAGS_BUSY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct mtk_cryp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_cryp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct mtk_sha_rec *sha = (struct mtk_sha_rec *)dev_id;
	struct mtk_cryp *cryp = sha->cryp;
	u32 val = FUNC5(cryp, FUNC1(sha->id));

	FUNC6(cryp, FUNC1(sha->id), val);

	if (FUNC4((SHA_FLAGS_BUSY & sha->flags))) {
		FUNC6(cryp, FUNC0(sha->id), MTK_CNT_RST);
		FUNC6(cryp, FUNC2(sha->id),
			      MTK_RDR_PROC_THRESH | MTK_RDR_PROC_MODE);

		FUNC7(&sha->done_task);
	} else {
		FUNC3(cryp->dev, "SHA interrupt when no active requests.\n");
	}
	return IRQ_HANDLED;
}