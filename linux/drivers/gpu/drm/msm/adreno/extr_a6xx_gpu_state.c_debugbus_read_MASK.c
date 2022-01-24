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
struct msm_gpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  REG_A6XX_DBGC_CFG_DBGBUS_SEL_A ; 
 int /*<<< orphan*/  REG_A6XX_DBGC_CFG_DBGBUS_SEL_B ; 
 int /*<<< orphan*/  REG_A6XX_DBGC_CFG_DBGBUS_SEL_C ; 
 int /*<<< orphan*/  REG_A6XX_DBGC_CFG_DBGBUS_SEL_D ; 
 int /*<<< orphan*/  REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF1 ; 
 int /*<<< orphan*/  REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF2 ; 
 int FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct msm_gpu *gpu, u32 block, u32 offset,
		u32 *data)
{
	u32 reg = FUNC1(offset) |
		FUNC0(block);

	FUNC3(gpu, REG_A6XX_DBGC_CFG_DBGBUS_SEL_A, reg);
	FUNC3(gpu, REG_A6XX_DBGC_CFG_DBGBUS_SEL_B, reg);
	FUNC3(gpu, REG_A6XX_DBGC_CFG_DBGBUS_SEL_C, reg);
	FUNC3(gpu, REG_A6XX_DBGC_CFG_DBGBUS_SEL_D, reg);

	/* Wait 1 us to make sure the data is flowing */
	FUNC4(1);

	data[0] = FUNC2(gpu, REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF2);
	data[1] = FUNC2(gpu, REG_A6XX_DBGC_CFG_DBGBUS_TRACE_BUF1);

	return 2;
}