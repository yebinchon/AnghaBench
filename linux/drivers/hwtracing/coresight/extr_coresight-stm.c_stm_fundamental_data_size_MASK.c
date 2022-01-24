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
struct stm_drvdata {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  CONFIG_64BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ STMSPFEAT2R ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(struct stm_drvdata *drvdata)
{
	u32 stmspfeat2r;

	if (!FUNC1(CONFIG_64BIT))
		return 4;

	stmspfeat2r = FUNC2(drvdata->base + STMSPFEAT2R);

	/*
	 * bit[15:12] represents the fundamental data size
	 * 0 - 32-bit data
	 * 1 - 64-bit data
	 */
	return FUNC0(stmspfeat2r, 12, 15) ? 8 : 4;
}