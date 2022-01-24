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
struct mxsfb_drm_private {scalar_t__ clk_axi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(struct mxsfb_drm_private *mxsfb)
{
	if (mxsfb->clk_axi)
		FUNC0(mxsfb->clk_axi);
}