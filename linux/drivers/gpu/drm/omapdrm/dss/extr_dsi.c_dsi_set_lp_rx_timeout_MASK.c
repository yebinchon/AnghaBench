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
 int /*<<< orphan*/  DSI_TIMING2 ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned int,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int,int) ; 
 unsigned long FUNC3 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dsi_data *dsi, unsigned int ticks,
				  bool x4, bool x16)
{
	unsigned long fck;
	unsigned long total_ticks;
	u32 r;

	FUNC0(ticks > 0x1fff);

	/* ticks in DSI_FCK */
	fck = FUNC3(dsi);

	r = FUNC4(dsi, DSI_TIMING2);
	r = FUNC2(r, 1, 15, 15);	/* LP_RX_TO */
	r = FUNC2(r, x16 ? 1 : 0, 14, 14);	/* LP_RX_TO_X16 */
	r = FUNC2(r, x4 ? 1 : 0, 13, 13);	/* LP_RX_TO_X4 */
	r = FUNC2(r, ticks, 12, 0);	/* LP_RX_COUNTER */
	FUNC5(dsi, DSI_TIMING2, r);

	total_ticks = ticks * (x16 ? 16 : 1) * (x4 ? 4 : 1);

	FUNC1("LP_RX_TO %lu ticks (%#x%s%s) = %lu ns\n",
			total_ticks,
			ticks, x4 ? " x4" : "", x16 ? " x16" : "",
			(total_ticks * 1000) / (fck / 1000 / 1000));
}