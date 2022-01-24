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
typedef  int /*<<< orphan*/  u32 ;
struct msm_dsi_host {int /*<<< orphan*/  intr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  REG_DSI_INTR_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct msm_dsi_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_dsi_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct msm_dsi_host *msm_host, u32 mask, int enable)
{
	u32 intr;
	unsigned long flags;

	FUNC3(&msm_host->intr_lock, flags);
	intr = FUNC1(msm_host, REG_DSI_INTR_CTRL);

	if (enable)
		intr |= mask;
	else
		intr &= ~mask;

	FUNC0("intr=%x enable=%d", intr, enable);

	FUNC2(msm_host, REG_DSI_INTR_CTRL, intr);
	FUNC4(&msm_host->intr_lock, flags);
}