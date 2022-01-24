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
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DSI_TIMING1 ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned int,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int,int) ; 
 unsigned long FUNC3 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dsi_data *dsi, unsigned int ticks,
			       bool x8, bool x16)
{
	unsigned long fck;
	unsigned long total_ticks;
	u32 r;

	FUNC0(ticks > 0x1fff);

	/* ticks in DSI_FCK */
	fck = FUNC3(dsi);

	r = FUNC4(dsi, DSI_TIMING1);
	r = FUNC2(r, 1, 31, 31);	/* TA_TO */
	r = FUNC2(r, x16 ? 1 : 0, 30, 30);	/* TA_TO_X16 */
	r = FUNC2(r, x8 ? 1 : 0, 29, 29);	/* TA_TO_X8 */
	r = FUNC2(r, ticks, 28, 16);	/* TA_TO_COUNTER */
	FUNC5(dsi, DSI_TIMING1, r);

	total_ticks = ticks * (x16 ? 16 : 1) * (x8 ? 8 : 1);

	FUNC1("TA_TO %lu ticks (%#x%s%s) = %lu ns\n",
			total_ticks,
			ticks, x8 ? " x8" : "", x16 ? " x16" : "",
			(total_ticks * 1000) / (fck / 1000 / 1000));
}