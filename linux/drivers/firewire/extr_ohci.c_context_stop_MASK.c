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
struct fw_ohci {int dummy; } ;
struct context {int running; int /*<<< orphan*/  regs; struct fw_ohci* ohci; } ;

/* Variables and functions */
 int CONTEXT_ACTIVE ; 
 int /*<<< orphan*/  CONTEXT_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_ohci*,char*,int) ; 
 int FUNC3 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct context *ctx)
{
	struct fw_ohci *ohci = ctx->ohci;
	u32 reg;
	int i;

	FUNC4(ohci, FUNC0(ctx->regs), CONTEXT_RUN);
	ctx->running = false;

	for (i = 0; i < 1000; i++) {
		reg = FUNC3(ohci, FUNC1(ctx->regs));
		if ((reg & CONTEXT_ACTIVE) == 0)
			return;

		if (i)
			FUNC5(10);
	}
	FUNC2(ohci, "DMA context still active (0x%08x)\n", reg);
}