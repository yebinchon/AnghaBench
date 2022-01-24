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
struct mtk_cryp {struct mtk_aes_rec** aes; } ;
struct mtk_aes_rec {void* buf; int /*<<< orphan*/  id; int /*<<< orphan*/  done_task; int /*<<< orphan*/  queue_task; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; struct mtk_cryp* cryp; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BUF_ORDER ; 
 int /*<<< orphan*/  AES_QUEUE_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MTK_REC_NUM ; 
 int /*<<< orphan*/  MTK_RING0 ; 
 int /*<<< orphan*/  MTK_RING1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_aes_rec*) ; 
 struct mtk_aes_rec* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_aes_done_task ; 
 int /*<<< orphan*/  mtk_aes_queue_task ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct mtk_cryp *cryp)
{
	struct mtk_aes_rec **aes = cryp->aes;
	int i, err = -ENOMEM;

	for (i = 0; i < MTK_REC_NUM; i++) {
		aes[i] = FUNC4(sizeof(**aes), GFP_KERNEL);
		if (!aes[i])
			goto err_cleanup;

		aes[i]->buf = (void *)FUNC0(GFP_KERNEL,
						AES_BUF_ORDER);
		if (!aes[i]->buf)
			goto err_cleanup;

		aes[i]->cryp = cryp;

		FUNC5(&aes[i]->lock);
		FUNC1(&aes[i]->queue, AES_QUEUE_SIZE);

		FUNC6(&aes[i]->queue_task, mtk_aes_queue_task,
			     (unsigned long)aes[i]);
		FUNC6(&aes[i]->done_task, mtk_aes_done_task,
			     (unsigned long)aes[i]);
	}

	/* Link to ring0 and ring1 respectively */
	aes[0]->id = MTK_RING0;
	aes[1]->id = MTK_RING1;

	return 0;

err_cleanup:
	for (; i--; ) {
		FUNC2((unsigned long)aes[i]->buf);
		FUNC3(aes[i]);
	}

	return err;
}