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
struct mtk_cryp {int /*<<< orphan*/  dev; int /*<<< orphan*/  aes_list; int /*<<< orphan*/ * aes; int /*<<< orphan*/ * irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTK_IRQ_RDR0 ; 
 int /*<<< orphan*/  MTK_IRQ_RDR1 ; 
 size_t MTK_RING0 ; 
 size_t MTK_RING1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mtk_aes ; 
 int /*<<< orphan*/  mtk_aes_irq ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_cryp*) ; 
 int FUNC7 (struct mtk_cryp*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_cryp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct mtk_cryp *cryp)
{
	int ret;

	FUNC1(&cryp->aes_list);

	/* Initialize two cipher records */
	ret = FUNC7(cryp);
	if (ret)
		goto err_record;

	ret = FUNC3(cryp->dev, cryp->irq[MTK_RING0], mtk_aes_irq,
			       0, "mtk-aes", cryp->aes[0]);
	if (ret) {
		FUNC2(cryp->dev, "unable to request AES irq.\n");
		goto err_res;
	}

	ret = FUNC3(cryp->dev, cryp->irq[MTK_RING1], mtk_aes_irq,
			       0, "mtk-aes", cryp->aes[1]);
	if (ret) {
		FUNC2(cryp->dev, "unable to request AES irq.\n");
		goto err_res;
	}

	/* Enable ring0 and ring1 interrupt */
	FUNC9(cryp, FUNC0(MTK_RING0), MTK_IRQ_RDR0);
	FUNC9(cryp, FUNC0(MTK_RING1), MTK_IRQ_RDR1);

	FUNC10(&mtk_aes.lock);
	FUNC4(&cryp->aes_list, &mtk_aes.dev_list);
	FUNC11(&mtk_aes.lock);

	ret = FUNC8();
	if (ret)
		goto err_algs;

	return 0;

err_algs:
	FUNC10(&mtk_aes.lock);
	FUNC5(&cryp->aes_list);
	FUNC11(&mtk_aes.lock);
err_res:
	FUNC6(cryp);
err_record:

	FUNC2(cryp->dev, "mtk-aes initialization failed.\n");
	return ret;
}