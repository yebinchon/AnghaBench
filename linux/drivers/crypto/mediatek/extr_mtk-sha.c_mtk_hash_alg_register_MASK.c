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
struct mtk_cryp {int /*<<< orphan*/  dev; int /*<<< orphan*/  sha_list; int /*<<< orphan*/ * sha; int /*<<< orphan*/ * irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTK_IRQ_RDR2 ; 
 int /*<<< orphan*/  MTK_IRQ_RDR3 ; 
 size_t MTK_RING2 ; 
 size_t MTK_RING3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mtk_sha ; 
 int /*<<< orphan*/  mtk_sha_irq ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_cryp*) ; 
 int FUNC7 (struct mtk_cryp*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_cryp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct mtk_cryp *cryp)
{
	int err;

	FUNC1(&cryp->sha_list);

	/* Initialize two hash records */
	err = FUNC7(cryp);
	if (err)
		goto err_record;

	err = FUNC3(cryp->dev, cryp->irq[MTK_RING2], mtk_sha_irq,
			       0, "mtk-sha", cryp->sha[0]);
	if (err) {
		FUNC2(cryp->dev, "unable to request sha irq0.\n");
		goto err_res;
	}

	err = FUNC3(cryp->dev, cryp->irq[MTK_RING3], mtk_sha_irq,
			       0, "mtk-sha", cryp->sha[1]);
	if (err) {
		FUNC2(cryp->dev, "unable to request sha irq1.\n");
		goto err_res;
	}

	/* Enable ring2 and ring3 interrupt for hash */
	FUNC9(cryp, FUNC0(MTK_RING2), MTK_IRQ_RDR2);
	FUNC9(cryp, FUNC0(MTK_RING3), MTK_IRQ_RDR3);

	FUNC10(&mtk_sha.lock);
	FUNC4(&cryp->sha_list, &mtk_sha.dev_list);
	FUNC11(&mtk_sha.lock);

	err = FUNC8();
	if (err)
		goto err_algs;

	return 0;

err_algs:
	FUNC10(&mtk_sha.lock);
	FUNC5(&cryp->sha_list);
	FUNC11(&mtk_sha.lock);
err_res:
	FUNC6(cryp);
err_record:

	FUNC2(cryp->dev, "mtk-sha initialization failed.\n");
	return err;
}