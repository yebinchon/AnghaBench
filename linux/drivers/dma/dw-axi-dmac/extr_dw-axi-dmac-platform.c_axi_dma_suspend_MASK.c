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
struct axi_dma_chip {int /*<<< orphan*/  cfgr_clk; int /*<<< orphan*/  core_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct axi_dma_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct axi_dma_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct axi_dma_chip *chip)
{
	FUNC1(chip);
	FUNC0(chip);

	FUNC2(chip->core_clk);
	FUNC2(chip->cfgr_clk);

	return 0;
}