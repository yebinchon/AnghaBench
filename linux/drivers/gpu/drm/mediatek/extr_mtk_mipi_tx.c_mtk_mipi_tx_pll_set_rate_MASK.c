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
struct mtk_mipi_tx {unsigned long data_rate; int /*<<< orphan*/  dev; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 struct mtk_mipi_tx* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, unsigned long rate,
				    unsigned long parent_rate)
{
	struct mtk_mipi_tx *mipi_tx = FUNC1(hw);

	FUNC0(mipi_tx->dev, "set rate: %lu Hz\n", rate);

	mipi_tx->data_rate = rate;

	return 0;
}