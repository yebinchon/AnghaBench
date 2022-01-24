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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct mlx5_stride_block_entry {void* stride; void* va; void* key; void* bcount; } ;
struct mlx5_stride_block_ctrl_seg {void* num_entries; void* repeat_count; void* op; void* bcount_per_cycle; } ;
struct mlx5_klm {void* va; void* key; void* bcount; } ;
struct mlx5_ib_qp {int /*<<< orphan*/  sq; } ;
struct TYPE_5__ {int lkey; } ;
struct mlx5_ib_mr {int data_length; scalar_t__ data_iova; int meta_length; scalar_t__ pi_iova; TYPE_1__ ibmr; scalar_t__ meta_ndescs; struct mlx5_ib_mr* pi_mr; } ;
struct mlx5_bsf {int dummy; } ;
struct TYPE_6__ {int pi_interval; } ;
struct TYPE_7__ {TYPE_2__ dif; } ;
struct TYPE_8__ {int /*<<< orphan*/  sig_type; TYPE_3__ sig; } ;
struct ib_sig_attrs {TYPE_4__ mem; } ;
struct ib_send_wr {int dummy; } ;
struct ib_mr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int MLX5_STRIDE_BLOCK_OP ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void**,int,void**) ; 
 int FUNC5 (struct ib_mr*,struct ib_sig_attrs*,struct mlx5_bsf*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_mr* FUNC8 (struct ib_mr*) ; 

__attribute__((used)) static int FUNC9(const struct ib_send_wr *send_wr,
				struct ib_mr *sig_mr,
				struct ib_sig_attrs *sig_attrs,
				struct mlx5_ib_qp *qp, void **seg, int *size,
				void **cur_edge)
{
	struct mlx5_bsf *bsf;
	u32 data_len;
	u32 data_key;
	u64 data_va;
	u32 prot_len = 0;
	u32 prot_key = 0;
	u64 prot_va = 0;
	bool prot = false;
	int ret;
	int wqe_size;
	struct mlx5_ib_mr *mr = FUNC8(sig_mr);
	struct mlx5_ib_mr *pi_mr = mr->pi_mr;

	data_len = pi_mr->data_length;
	data_key = pi_mr->ibmr.lkey;
	data_va = pi_mr->data_iova;
	if (pi_mr->meta_ndescs) {
		prot_len = pi_mr->meta_length;
		prot_key = pi_mr->ibmr.lkey;
		prot_va = pi_mr->pi_iova;
		prot = true;
	}

	if (!prot || (data_key == prot_key && data_va == prot_va &&
		      data_len == prot_len)) {
		/**
		 * Source domain doesn't contain signature information
		 * or data and protection are interleaved in memory.
		 * So need construct:
		 *                  ------------------
		 *                 |     data_klm     |
		 *                  ------------------
		 *                 |       BSF        |
		 *                  ------------------
		 **/
		struct mlx5_klm *data_klm = *seg;

		data_klm->bcount = FUNC2(data_len);
		data_klm->key = FUNC2(data_key);
		data_klm->va = FUNC3(data_va);
		wqe_size = FUNC0(sizeof(*data_klm), 64);
	} else {
		/**
		 * Source domain contains signature information
		 * So need construct a strided block format:
		 *               ---------------------------
		 *              |     stride_block_ctrl     |
		 *               ---------------------------
		 *              |          data_klm         |
		 *               ---------------------------
		 *              |          prot_klm         |
		 *               ---------------------------
		 *              |             BSF           |
		 *               ---------------------------
		 **/
		struct mlx5_stride_block_ctrl_seg *sblock_ctrl;
		struct mlx5_stride_block_entry *data_sentry;
		struct mlx5_stride_block_entry *prot_sentry;
		u16 block_size = sig_attrs->mem.sig.dif.pi_interval;
		int prot_size;

		sblock_ctrl = *seg;
		data_sentry = (void *)sblock_ctrl + sizeof(*sblock_ctrl);
		prot_sentry = (void *)data_sentry + sizeof(*data_sentry);

		prot_size = FUNC7(sig_attrs->mem.sig_type);
		if (!prot_size) {
			FUNC6("Bad block size given: %u\n", block_size);
			return -EINVAL;
		}
		sblock_ctrl->bcount_per_cycle = FUNC2(block_size +
							    prot_size);
		sblock_ctrl->op = FUNC2(MLX5_STRIDE_BLOCK_OP);
		sblock_ctrl->repeat_count = FUNC2(data_len / block_size);
		sblock_ctrl->num_entries = FUNC1(2);

		data_sentry->bcount = FUNC1(block_size);
		data_sentry->key = FUNC2(data_key);
		data_sentry->va = FUNC3(data_va);
		data_sentry->stride = FUNC1(block_size);

		prot_sentry->bcount = FUNC1(prot_size);
		prot_sentry->key = FUNC2(prot_key);
		prot_sentry->va = FUNC3(prot_va);
		prot_sentry->stride = FUNC1(prot_size);

		wqe_size = FUNC0(sizeof(*sblock_ctrl) + sizeof(*data_sentry) +
				 sizeof(*prot_sentry), 64);
	}

	*seg += wqe_size;
	*size += wqe_size / 16;
	FUNC4(&qp->sq, seg, *size, cur_edge);

	bsf = *seg;
	ret = FUNC5(sig_mr, sig_attrs, bsf, data_len);
	if (ret)
		return -EINVAL;

	*seg += sizeof(*bsf);
	*size += sizeof(*bsf) / 16;
	FUNC4(&qp->sq, seg, *size, cur_edge);

	return 0;
}