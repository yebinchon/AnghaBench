#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct mlx4_ib_demux_ctx {int /*<<< orphan*/  wq; int /*<<< orphan*/  ud_wq; TYPE_3__** tun; int /*<<< orphan*/  port; int /*<<< orphan*/  ib_dev; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_5__ {int sqp_demux; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;

/* Variables and functions */
 scalar_t__ DEMUX_PV_STATE_DOWN ; 
 scalar_t__ DEMUX_PV_STATE_DOWNING ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_ib_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_ib_demux_ctx*,int) ; 
 struct mlx4_ib_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mlx4_ib_demux_ctx *ctx)
{
	int i;
	if (ctx) {
		struct mlx4_ib_dev *dev = FUNC6(ctx->ib_dev);
		FUNC5(ctx, 1);
		for (i = 0; i < dev->dev->caps.sqp_demux; i++) {
			if (!ctx->tun[i])
				continue;
			if (ctx->tun[i]->state > DEMUX_PV_STATE_DOWN)
				ctx->tun[i]->state = DEMUX_PV_STATE_DOWNING;
		}
		FUNC2(ctx->wq);
		for (i = 0; i < dev->dev->caps.sqp_demux; i++) {
			FUNC0(dev, i, ctx->port, ctx->tun[i], 0);
			FUNC3(dev, i, ctx->port);
		}
		FUNC4(ctx->tun);
		FUNC1(ctx->ud_wq);
		FUNC1(ctx->wq);
	}
}