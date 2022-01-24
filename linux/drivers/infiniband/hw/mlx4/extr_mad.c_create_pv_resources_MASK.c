#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_demux_pv_ctx {scalar_t__ state; int has_smi; int /*<<< orphan*/ * cq; int /*<<< orphan*/ * pd; TYPE_3__* qp; int /*<<< orphan*/ * wq; int /*<<< orphan*/  work; int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  port; } ;
struct ib_device {int dummy; } ;
struct ib_cq_init_attr {int cqe; } ;
struct TYPE_6__ {TYPE_1__* demux; } ;
struct TYPE_8__ {TYPE_2__ sriov; } ;
struct TYPE_7__ {int /*<<< orphan*/ * qp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * wq; } ;

/* Variables and functions */
 scalar_t__ DEMUX_PV_STATE_ACTIVE ; 
 scalar_t__ DEMUX_PV_STATE_DOWN ; 
 scalar_t__ DEMUX_PV_STATE_STARTING ; 
 int EEXIST ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int MLX4_NUM_TUNNEL_BUFS ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx4_ib_demux_pv_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mlx4_ib_demux_pv_ctx*,struct ib_cq_init_attr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mlx4_ib_demux_pv_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_ib_demux_pv_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mlx4_ib_sqp_comp_worker ; 
 int /*<<< orphan*/  mlx4_ib_tunnel_comp_handler ; 
 int /*<<< orphan*/  mlx4_ib_tunnel_comp_worker ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 scalar_t__ FUNC13 (struct ib_device*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (struct ib_device*) ; 

__attribute__((used)) static int FUNC15(struct ib_device *ibdev, int slave, int port,
			       int create_tun, struct mlx4_ib_demux_pv_ctx *ctx)
{
	int ret, cq_size;
	struct ib_cq_init_attr cq_attr = {};

	if (ctx->state != DEMUX_PV_STATE_DOWN)
		return -EEXIST;

	ctx->state = DEMUX_PV_STATE_STARTING;
	/* have QP0 only if link layer is IB */
	if (FUNC13(ibdev, ctx->port) ==
	    IB_LINK_LAYER_INFINIBAND)
		ctx->has_smi = 1;

	if (ctx->has_smi) {
		ret = FUNC10(ctx, IB_QPT_SMI, create_tun);
		if (ret) {
			FUNC12("Failed allocating qp0 tunnel bufs (%d)\n", ret);
			goto err_out;
		}
	}

	ret = FUNC10(ctx, IB_QPT_GSI, create_tun);
	if (ret) {
		FUNC12("Failed allocating qp1 tunnel bufs (%d)\n", ret);
		goto err_out_qp0;
	}

	cq_size = 2 * MLX4_NUM_TUNNEL_BUFS;
	if (ctx->has_smi)
		cq_size *= 2;

	cq_attr.cqe = cq_size;
	ctx->cq = FUNC5(ctx->ib_dev, mlx4_ib_tunnel_comp_handler,
			       NULL, ctx, &cq_attr);
	if (FUNC1(ctx->cq)) {
		ret = FUNC2(ctx->cq);
		FUNC12("Couldn't create tunnel CQ (%d)\n", ret);
		goto err_buf;
	}

	ctx->pd = FUNC4(ctx->ib_dev, 0);
	if (FUNC1(ctx->pd)) {
		ret = FUNC2(ctx->pd);
		FUNC12("Couldn't create tunnel PD (%d)\n", ret);
		goto err_cq;
	}

	if (ctx->has_smi) {
		ret = FUNC3(ctx, IB_QPT_SMI, create_tun);
		if (ret) {
			FUNC12("Couldn't create %s QP0 (%d)\n",
			       create_tun ? "tunnel for" : "",  ret);
			goto err_pd;
		}
	}

	ret = FUNC3(ctx, IB_QPT_GSI, create_tun);
	if (ret) {
		FUNC12("Couldn't create %s QP1 (%d)\n",
		       create_tun ? "tunnel for" : "",  ret);
		goto err_qp0;
	}

	if (create_tun)
		FUNC0(&ctx->work, mlx4_ib_tunnel_comp_worker);
	else
		FUNC0(&ctx->work, mlx4_ib_sqp_comp_worker);

	ctx->wq = FUNC14(ibdev)->sriov.demux[port - 1].wq;

	ret = FUNC9(ctx->cq, IB_CQ_NEXT_COMP);
	if (ret) {
		FUNC12("Couldn't arm tunnel cq (%d)\n", ret);
		goto err_wq;
	}
	ctx->state = DEMUX_PV_STATE_ACTIVE;
	return 0;

err_wq:
	ctx->wq = NULL;
	FUNC8(ctx->qp[1].qp);
	ctx->qp[1].qp = NULL;


err_qp0:
	if (ctx->has_smi)
		FUNC8(ctx->qp[0].qp);
	ctx->qp[0].qp = NULL;

err_pd:
	FUNC6(ctx->pd);
	ctx->pd = NULL;

err_cq:
	FUNC7(ctx->cq);
	ctx->cq = NULL;

err_buf:
	FUNC11(ctx, IB_QPT_GSI, create_tun);

err_out_qp0:
	if (ctx->has_smi)
		FUNC11(ctx, IB_QPT_SMI, create_tun);
err_out:
	ctx->state = DEMUX_PV_STATE_DOWN;
	return ret;
}