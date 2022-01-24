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
struct rdma_ah_attr {int dummy; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/ * sm_ah; struct ib_mad_agent*** send_agent; } ;
struct mlx4_ib_demux_ctx {int port; struct mlx4_ib_dev* dev; } ;
struct ib_wc {int port_num; int src_qp; int /*<<< orphan*/  slid; scalar_t__ dlid_path_bits; scalar_t__ sl; int /*<<< orphan*/  pkey_index; } ;
struct ib_mad_agent {int dummy; } ;
struct ib_mad {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  IB_DEFAULT_PKEY_FULL ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_ib_dev*,int,int,int /*<<< orphan*/ ,struct ib_wc*,int /*<<< orphan*/ *,struct ib_mad*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rdma_ah_attr*) ; 

__attribute__((used)) static int FUNC4(int slave, struct mlx4_ib_demux_ctx *ctx,
			     struct ib_mad *mad)
{
	struct mlx4_ib_dev *dev = ctx->dev;
	struct ib_mad_agent *agent = dev->send_agent[ctx->port - 1][1];
	struct ib_wc wc;
	struct rdma_ah_attr ah_attr;

	/* Our agent might not yet be registered when mads start to arrive */
	if (!agent)
		return -EAGAIN;

	FUNC3(dev->sm_ah[ctx->port - 1], &ah_attr);

	if (FUNC0(&dev->ib_dev, ctx->port, IB_DEFAULT_PKEY_FULL, &wc.pkey_index))
		return -EINVAL;
	wc.sl = 0;
	wc.dlid_path_bits = 0;
	wc.port_num = ctx->port;
	wc.slid = FUNC2(&ah_attr);  /* opensm lid */
	wc.src_qp = 1;
	return FUNC1(dev, slave, ctx->port, IB_QPT_GSI, &wc, NULL, mad);
}