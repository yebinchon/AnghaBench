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
struct fw_ohci {int dummy; } ;
struct ar_context {int /*<<< orphan*/  regs; struct fw_ohci* ohci; } ;

/* Variables and functions */
 int CONTEXT_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_ohci*,char*,char const*) ; 
 int FUNC3 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ar_context *ctx, const char *error_msg)
{
	struct fw_ohci *ohci = ctx->ohci;

	if (FUNC3(ohci, FUNC0(ctx->regs)) & CONTEXT_RUN) {
		FUNC4(ohci, FUNC0(ctx->regs), CONTEXT_RUN);
		FUNC1(ohci);

		FUNC2(ohci, "AR error: %s; DMA stopped\n", error_msg);
	}
	/* FIXME: restart? */
}