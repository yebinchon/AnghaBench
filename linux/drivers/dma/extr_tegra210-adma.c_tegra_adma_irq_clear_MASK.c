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
typedef  scalar_t__ u32 ;
struct tegra_adma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMA_CH_INT_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_adma_chan*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct tegra_adma_chan*) ; 

__attribute__((used)) static u32 FUNC2(struct tegra_adma_chan *tdc)
{
	u32 status = FUNC1(tdc);

	if (status)
		FUNC0(tdc, ADMA_CH_INT_CLEAR, status);

	return status;
}