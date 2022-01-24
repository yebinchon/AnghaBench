#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_ib_dev {TYPE_3__* dev; int /*<<< orphan*/  ib_dev; } ;
struct mlx4_ib_demux_pv_ctx {int dummy; } ;
struct mlx4_ib_demux_ctx {int port; int /*<<< orphan*/ * tun; int /*<<< orphan*/ * wq; void* ud_wq; int /*<<< orphan*/ * ib_dev; struct mlx4_ib_dev* dev; } ;
struct mlx4_active_ports {int /*<<< orphan*/  ports; } ;
struct TYPE_5__ {int sqp_demux; } ;
struct TYPE_6__ {TYPE_2__ caps; TYPE_1__* persist; } ;
struct TYPE_4__ {scalar_t__ num_vfs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx4_ib_dev*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct mlx4_active_ports FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_ib_demux_ctx*,int) ; 
 int FUNC9 (struct mlx4_ib_demux_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mlx4_ib_dev *dev,
				       struct mlx4_ib_demux_ctx *ctx,
				       int port)
{
	char name[12];
	int ret = 0;
	int i;

	ctx->tun = FUNC4(dev->dev->caps.sqp_demux,
			   sizeof (struct mlx4_ib_demux_pv_ctx *), GFP_KERNEL);
	if (!ctx->tun)
		return -ENOMEM;

	ctx->dev = dev;
	ctx->port = port;
	ctx->ib_dev = &dev->ib_dev;

	for (i = 0;
	     i < FUNC6(dev->dev->caps.sqp_demux,
	     (u16)(dev->dev->persist->num_vfs + 1));
	     i++) {
		struct mlx4_active_ports actv_ports =
			FUNC7(dev->dev, i);

		if (!FUNC12(port - 1, actv_ports.ports))
			continue;

		ret = FUNC1(dev, i, port, &ctx->tun[i]);
		if (ret) {
			ret = -ENOMEM;
			goto err_mcg;
		}
	}

	ret = FUNC9(ctx);
	if (ret) {
		FUNC10("Failed initializing mcg para-virt (%d)\n", ret);
		goto err_mcg;
	}

	FUNC11(name, sizeof name, "mlx4_ibt%d", port);
	ctx->wq = FUNC0(name, WQ_MEM_RECLAIM);
	if (!ctx->wq) {
		FUNC10("Failed to create tunnelling WQ for port %d\n", port);
		ret = -ENOMEM;
		goto err_wq;
	}

	FUNC11(name, sizeof name, "mlx4_ibud%d", port);
	ctx->ud_wq = FUNC0(name, WQ_MEM_RECLAIM);
	if (!ctx->ud_wq) {
		FUNC10("Failed to create up/down WQ for port %d\n", port);
		ret = -ENOMEM;
		goto err_udwq;
	}

	return 0;

err_udwq:
	FUNC2(ctx->wq);
	ctx->wq = NULL;

err_wq:
	FUNC8(ctx, 1);
err_mcg:
	for (i = 0; i < dev->dev->caps.sqp_demux; i++)
		FUNC3(dev, i, port);
	FUNC5(ctx->tun);
	ctx->tun = NULL;
	return ret;
}