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
typedef  int u32 ;
struct tegra_adma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMA_CH_STATUS ; 
 int ADMA_CH_STATUS_XFER_PAUSED ; 
 int FUNC0 (struct tegra_adma_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct tegra_adma_chan *tdc)
{
	u32 csts;

	csts = FUNC0(tdc, ADMA_CH_STATUS);
	csts &= ADMA_CH_STATUS_XFER_PAUSED;

	return csts ? true : false;
}