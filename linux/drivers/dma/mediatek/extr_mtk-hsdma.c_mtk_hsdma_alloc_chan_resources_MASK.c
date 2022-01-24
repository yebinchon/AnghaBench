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
struct mtk_hsdma_device {int /*<<< orphan*/  pc_refcnt; int /*<<< orphan*/  pc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mtk_hsdma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct mtk_hsdma_device* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *c)
{
	struct mtk_hsdma_device *hsdma = FUNC4(c);
	int err;

	/*
	 * Since HSDMA has only one PC, the resource for PC is being allocated
	 * when the first VC is being created and the other VCs would run on
	 * the same PC.
	 */
	if (!FUNC2(&hsdma->pc_refcnt)) {
		err = FUNC0(hsdma, hsdma->pc);
		if (err)
			return err;
		/*
		 * refcount_inc would complain increment on 0; use-after-free.
		 * Thus, we need to explicitly set it as 1 initially.
		 */
		FUNC3(&hsdma->pc_refcnt, 1);
	} else {
		FUNC1(&hsdma->pc_refcnt);
	}

	return 0;
}