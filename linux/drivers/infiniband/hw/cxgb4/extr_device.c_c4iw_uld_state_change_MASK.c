#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pdev; } ;
struct uld_ctx {TYPE_2__* dev; TYPE_3__ lldi; int /*<<< orphan*/  reg_work; } ;
struct ib_event {int /*<<< orphan*/ * device; int /*<<< orphan*/  event; } ;
typedef  enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  ibdev; TYPE_1__ rdev; } ;

/* Variables and functions */
#define  CXGB4_STATE_DETACH 132 
#define  CXGB4_STATE_DOWN 131 
#define  CXGB4_STATE_FATAL_ERROR 130 
#define  CXGB4_STATE_START_RECOVERY 129 
#define  CXGB4_STATE_UP 128 
 int /*<<< orphan*/  IB_EVENT_DEVICE_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  T4_FATAL_ERROR ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  c4iw_register_device ; 
 int /*<<< orphan*/  FUNC4 (struct uld_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_event*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_workq ; 

__attribute__((used)) static int FUNC11(void *handle, enum cxgb4_state new_state)
{
	struct uld_ctx *ctx = handle;

	FUNC7("new_state %u\n", new_state);
	switch (new_state) {
	case CXGB4_STATE_UP:
		FUNC9("%s: Up\n", FUNC6(ctx->lldi.pdev));
		if (!ctx->dev) {
			ctx->dev = FUNC3(&ctx->lldi);
			if (FUNC1(ctx->dev)) {
				FUNC8("%s: initialization failed: %ld\n",
				       FUNC6(ctx->lldi.pdev),
				       FUNC2(ctx->dev));
				ctx->dev = NULL;
				break;
			}

			FUNC0(&ctx->reg_work, c4iw_register_device);
			FUNC10(reg_workq, &ctx->reg_work);
		}
		break;
	case CXGB4_STATE_DOWN:
		FUNC9("%s: Down\n", FUNC6(ctx->lldi.pdev));
		if (ctx->dev)
			FUNC4(ctx);
		break;
	case CXGB4_STATE_FATAL_ERROR:
	case CXGB4_STATE_START_RECOVERY:
		FUNC9("%s: Fatal Error\n", FUNC6(ctx->lldi.pdev));
		if (ctx->dev) {
			struct ib_event event = {};

			ctx->dev->rdev.flags |= T4_FATAL_ERROR;
			event.event  = IB_EVENT_DEVICE_FATAL;
			event.device = &ctx->dev->ibdev;
			FUNC5(&event);
			FUNC4(ctx);
		}
		break;
	case CXGB4_STATE_DETACH:
		FUNC9("%s: Detach\n", FUNC6(ctx->lldi.pdev));
		if (ctx->dev)
			FUNC4(ctx);
		break;
	}
	return 0;
}