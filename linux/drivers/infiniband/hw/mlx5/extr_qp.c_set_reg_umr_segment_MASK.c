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
typedef  int u64 ;
struct mlx5_wqe_umr_ctrl_seg {int /*<<< orphan*/  mkey_mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  xlt_offset_47_16; void* xlt_offset; void* xlt_octowords; } ;
struct mlx5_umr_wr {int /*<<< orphan*/  offset; int /*<<< orphan*/  xlt_size; int /*<<< orphan*/  ignore_free_state; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_send_wr {int send_flags; int /*<<< orphan*/  num_sge; } ;

/* Variables and functions */
 int MLX5_IB_SEND_UMR_DISABLE_MR ; 
 int MLX5_IB_SEND_UMR_ENABLE_MR ; 
 int MLX5_IB_SEND_UMR_FAIL_IF_FREE ; 
 int MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS ; 
 int MLX5_IB_SEND_UMR_UPDATE_TRANSLATION ; 
 int MLX5_IB_SEND_UMR_UPDATE_XLT ; 
 int /*<<< orphan*/  MLX5_UMR_CHECK_FREE ; 
 int /*<<< orphan*/  MLX5_UMR_CHECK_NOT_FREE ; 
 int /*<<< orphan*/  MLX5_UMR_INLINE ; 
 int /*<<< orphan*/  MLX5_UMR_TRANSLATION_OFFSET_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_wqe_umr_ctrl_seg*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 struct mlx5_umr_wr* FUNC11 (struct ib_send_wr const*) ; 

__attribute__((used)) static int FUNC12(struct mlx5_ib_dev *dev,
			       struct mlx5_wqe_umr_ctrl_seg *umr,
			       const struct ib_send_wr *wr, int atomic)
{
	const struct mlx5_umr_wr *umrwr = FUNC11(wr);

	FUNC9(umr, 0, sizeof(*umr));

	if (!umrwr->ignore_free_state) {
		if (wr->send_flags & MLX5_IB_SEND_UMR_FAIL_IF_FREE)
			 /* fail if free */
			umr->flags = MLX5_UMR_CHECK_FREE;
		else
			/* fail if not free */
			umr->flags = MLX5_UMR_CHECK_NOT_FREE;
	}

	umr->xlt_octowords = FUNC1(FUNC8(umrwr->xlt_size));
	if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_XLT) {
		u64 offset = FUNC8(umrwr->offset);

		umr->xlt_offset = FUNC1(offset & 0xffff);
		umr->xlt_offset_47_16 = FUNC2(offset >> 16);
		umr->flags |= MLX5_UMR_TRANSLATION_OFFSET_EN;
	}
	if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_TRANSLATION)
		umr->mkey_mask |= FUNC7();
	if (wr->send_flags & MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS) {
		umr->mkey_mask |= FUNC5(atomic);
		umr->mkey_mask |= FUNC6();
	}
	if (wr->send_flags & MLX5_IB_SEND_UMR_ENABLE_MR)
		umr->mkey_mask |= FUNC4();
	if (wr->send_flags & MLX5_IB_SEND_UMR_DISABLE_MR)
		umr->mkey_mask |= FUNC3();

	if (!wr->num_sge)
		umr->flags |= MLX5_UMR_INLINE;

	return FUNC10(dev, FUNC0(umr->mkey_mask));
}