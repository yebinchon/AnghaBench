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
struct mdc_dma {int /*<<< orphan*/  clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mdc_dma* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	struct mdc_dma *mdma = FUNC1(dev);

	FUNC0(mdma->clk);

	return 0;
}