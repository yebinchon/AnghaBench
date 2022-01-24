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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mtk_hsdma_vchan {TYPE_1__ vc; } ;
struct mtk_hsdma_device {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_hsdma_device*,struct mtk_hsdma_vchan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mtk_hsdma_device* FUNC3 (struct dma_chan*) ; 
 struct mtk_hsdma_vchan* FUNC4 (struct dma_chan*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *c)
{
	struct mtk_hsdma_device *hsdma = FUNC3(c);
	struct mtk_hsdma_vchan *hvc = FUNC4(c);
	unsigned long flags;

	FUNC1(&hvc->vc.lock, flags);

	if (FUNC5(&hvc->vc))
		FUNC0(hsdma, hvc);

	FUNC2(&hvc->vc.lock, flags);
}