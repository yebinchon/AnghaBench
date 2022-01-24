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
typedef  size_t u32 ;
struct mtk_cqdma_device {size_t dma_channels; TYPE_1__** pc; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_cqdma_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct mtk_cqdma_device *cqdma)
{
	unsigned long flags;
	int err;
	u32 i;

	FUNC6(FUNC2(cqdma));
	FUNC7(FUNC2(cqdma));

	err = FUNC1(cqdma->clk);

	if (err) {
		FUNC8(FUNC2(cqdma));
		FUNC5(FUNC2(cqdma));
		return err;
	}

	/* reset all PCs */
	for (i = 0; i < cqdma->dma_channels; ++i) {
		FUNC9(&cqdma->pc[i]->lock, flags);
		if (FUNC4(cqdma->pc[i]) < 0) {
			FUNC3(FUNC2(cqdma), "cqdma hard reset timeout\n");
			FUNC10(&cqdma->pc[i]->lock, flags);

			FUNC0(cqdma->clk);
			FUNC8(FUNC2(cqdma));
			FUNC5(FUNC2(cqdma));
			return -EINVAL;
		}
		FUNC10(&cqdma->pc[i]->lock, flags);
	}

	return 0;
}