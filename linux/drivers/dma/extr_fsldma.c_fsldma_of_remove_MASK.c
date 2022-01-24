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
struct platform_device {int dummy; } ;
struct fsldma_device {int /*<<< orphan*/  regs; scalar_t__* chan; int /*<<< orphan*/  common; } ;

/* Variables and functions */
 unsigned int FSL_DMA_MAX_CHANS_PER_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fsldma_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsldma_device*) ; 
 struct fsldma_device* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	struct fsldma_device *fdev;
	unsigned int i;

	fdev = FUNC5(op);
	FUNC0(&fdev->common);

	FUNC2(fdev);

	for (i = 0; i < FSL_DMA_MAX_CHANS_PER_DEVICE; i++) {
		if (fdev->chan[i])
			FUNC1(fdev->chan[i]);
	}

	FUNC3(fdev->regs);
	FUNC4(fdev);

	return 0;
}