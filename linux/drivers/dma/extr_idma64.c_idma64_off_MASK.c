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
struct idma64 {int /*<<< orphan*/  all_chan_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK ; 
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  DST_TRAN ; 
 int /*<<< orphan*/  ERROR ; 
 int IDMA64_CFG_DMA_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRC_TRAN ; 
 int /*<<< orphan*/  XFER ; 
 int /*<<< orphan*/  FUNC1 (struct idma64*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct idma64*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct idma64*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct idma64 *idma64)
{
	unsigned short count = 100;

	FUNC4(idma64, CFG, 0);

	FUNC1(idma64, FUNC0(XFER), idma64->all_chan_mask);
	FUNC1(idma64, FUNC0(BLOCK), idma64->all_chan_mask);
	FUNC1(idma64, FUNC0(SRC_TRAN), idma64->all_chan_mask);
	FUNC1(idma64, FUNC0(DST_TRAN), idma64->all_chan_mask);
	FUNC1(idma64, FUNC0(ERROR), idma64->all_chan_mask);

	do {
		FUNC2();
	} while (FUNC3(idma64, CFG) & IDMA64_CFG_DMA_EN && --count);
}