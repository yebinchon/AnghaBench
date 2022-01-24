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
struct gsc_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  GSC_IN_BASE_ADDR_CB_MASK ; 
 int /*<<< orphan*/  GSC_IN_BASE_ADDR_CR_MASK ; 
 int GSC_IN_BASE_ADDR_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSC_IN_BASE_ADDR_Y_MASK ; 
 int /*<<< orphan*/  GSC_OUT_BASE_ADDR_CB_MASK ; 
 int /*<<< orphan*/  GSC_OUT_BASE_ADDR_CR_MASK ; 
 int GSC_OUT_BASE_ADDR_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSC_OUT_BASE_ADDR_Y_MASK ; 
 int GSC_RESET_TIMEOUT ; 
 int /*<<< orphan*/  GSC_SW_RESET ; 
 int GSC_SW_RESET_SRESET ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct gsc_context *ctx)
{
	u32 cfg;
	int count = GSC_RESET_TIMEOUT;

	/* s/w reset */
	cfg = (GSC_SW_RESET_SRESET);
	FUNC4(cfg, GSC_SW_RESET);

	/* wait s/w reset complete */
	while (count--) {
		cfg = FUNC3(GSC_SW_RESET);
		if (!cfg)
			break;
		FUNC5(1000, 2000);
	}

	if (cfg) {
		FUNC0(ctx->dev, "failed to reset gsc h/w.\n");
		return -EBUSY;
	}

	/* reset sequence */
	cfg = FUNC3(GSC_IN_BASE_ADDR_Y_MASK);
	cfg |= (GSC_IN_BASE_ADDR_MASK |
		FUNC1(0));
	FUNC4(cfg, GSC_IN_BASE_ADDR_Y_MASK);
	FUNC4(cfg, GSC_IN_BASE_ADDR_CB_MASK);
	FUNC4(cfg, GSC_IN_BASE_ADDR_CR_MASK);

	cfg = FUNC3(GSC_OUT_BASE_ADDR_Y_MASK);
	cfg |= (GSC_OUT_BASE_ADDR_MASK |
		FUNC2(0));
	FUNC4(cfg, GSC_OUT_BASE_ADDR_Y_MASK);
	FUNC4(cfg, GSC_OUT_BASE_ADDR_CB_MASK);
	FUNC4(cfg, GSC_OUT_BASE_ADDR_CR_MASK);

	return 0;
}