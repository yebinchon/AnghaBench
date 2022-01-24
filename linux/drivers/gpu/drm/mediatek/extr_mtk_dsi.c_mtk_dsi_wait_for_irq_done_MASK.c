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
struct mtk_dsi {int irq_data; int /*<<< orphan*/  irq_wait_queue; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_dsi*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static s32 FUNC5(struct mtk_dsi *dsi, u32 irq_flag,
				     unsigned int timeout)
{
	s32 ret = 0;
	unsigned long jiffies = FUNC1(timeout);

	ret = FUNC4(dsi->irq_wait_queue,
					       dsi->irq_data & irq_flag,
					       jiffies);
	if (ret == 0) {
		FUNC0("Wait DSI IRQ(0x%08x) Timeout\n", irq_flag);

		FUNC2(dsi);
		FUNC3(dsi);
	}

	return ret;
}