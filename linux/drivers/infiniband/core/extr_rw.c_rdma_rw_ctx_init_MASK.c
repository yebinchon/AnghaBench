#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct rdma_rw_ctx {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  device; TYPE_1__* pd; } ;
struct ib_device {int /*<<< orphan*/  dma_device; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {struct ib_device* device; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ib_device*,struct scatterlist*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,struct scatterlist*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,scalar_t__,int) ; 
 int FUNC5 (struct rdma_rw_ctx*,struct ib_qp*,struct scatterlist*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC6 (struct rdma_rw_ctx*,struct ib_qp*,int /*<<< orphan*/ ,struct scatterlist*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC7 (struct rdma_rw_ctx*,struct ib_qp*,struct scatterlist*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC9 (struct scatterlist*) ; 
 struct scatterlist* FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*) ; 

int FUNC12(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
		struct scatterlist *sg, u32 sg_cnt, u32 sg_offset,
		u64 remote_addr, u32 rkey, enum dma_data_direction dir)
{
	struct ib_device *dev = qp->pd->device;
	int ret;

	if (FUNC3(FUNC11(sg)))
		ret = FUNC4(dev->dma_device, sg, sg_cnt, dir);
	else
		ret = FUNC1(dev, sg, sg_cnt, dir);

	if (!ret)
		return -ENOMEM;
	sg_cnt = ret;

	/*
	 * Skip to the S/G entry that sg_offset falls into:
	 */
	for (;;) {
		u32 len = FUNC9(sg);

		if (sg_offset < len)
			break;

		sg = FUNC10(sg);
		sg_offset -= len;
		sg_cnt--;
	}

	ret = -EIO;
	if (FUNC0(sg_cnt == 0))
		goto out_unmap_sg;

	if (FUNC8(qp->device, port_num, dir, sg_cnt)) {
		ret = FUNC6(ctx, qp, port_num, sg, sg_cnt,
				sg_offset, remote_addr, rkey, dir);
	} else if (sg_cnt > 1) {
		ret = FUNC5(ctx, qp, sg, sg_cnt, sg_offset,
				remote_addr, rkey, dir);
	} else {
		ret = FUNC7(ctx, qp, sg, sg_offset,
				remote_addr, rkey, dir);
	}

	if (ret < 0)
		goto out_unmap_sg;
	return ret;

out_unmap_sg:
	FUNC2(dev, sg, sg_cnt, dir);
	return ret;
}