#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct mlx5_ib_ubuffer {int /*<<< orphan*/ * umem; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  buf_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  mqp; } ;
struct mlx5_ib_sq {int tisn; struct mlx5_ib_ubuffer ubuffer; TYPE_1__ base; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
typedef  void __be64 ;
struct TYPE_4__ {int uid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC0 (void*,void*,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*,void*,struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_SEND_WQE_BB ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,struct ib_pd*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_SQC_STATE_RST ; 
 int FUNC7 (void*) ; 
 int MLX5_WQ_TYPE_CYCLIC ; 
 struct ib_pd* allow_multi_pkt_send_wqe ; 
 struct ib_pd* allow_swp ; 
 struct ib_pd* cqn ; 
 struct ib_pd* cqn_snd ; 
 void* create_qp_in ; 
 void* create_sq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  eth_net_offloads ; 
 struct ib_pd* flush_in_error_en ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct ib_pd* log_sq_size ; 
 struct ib_pd* log_wq_pg_sz ; 
 struct ib_pd* log_wq_stride ; 
 struct ib_pd* log_wq_sz ; 
 int FUNC12 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_ib_dev*,int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct mlx5_ib_dev*,struct ib_udata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  multi_pkt_send_wqe ; 
 struct ib_pd* page_offset ; 
 void* qpc ; 
 struct ib_pd* state ; 
 int /*<<< orphan*/  swp ; 
 struct ib_pd* tis_lst_sz ; 
 struct ib_pd* tis_num_0 ; 
 TYPE_2__* FUNC15 (struct ib_pd*) ; 
 struct ib_pd* uar_page ; 
 struct ib_pd* uid ; 
 struct ib_pd* user_index ; 
 struct ib_pd* wq_type ; 

__attribute__((used)) static int FUNC16(struct mlx5_ib_dev *dev,
				   struct ib_udata *udata,
				   struct mlx5_ib_sq *sq, void *qpin,
				   struct ib_pd *pd)
{
	struct mlx5_ib_ubuffer *ubuffer = &sq->ubuffer;
	__be64 *pas;
	void *in;
	void *sqc;
	void *qpc = FUNC0(create_qp_in, qpin, qpc);
	void *wq;
	int inlen;
	int err;
	int page_shift = 0;
	int npages;
	int ncont = 0;
	u32 offset = 0;

	err = FUNC14(dev, udata, ubuffer->buf_addr, ubuffer->buf_size,
			       &sq->ubuffer.umem, &npages, &page_shift, &ncont,
			       &offset);
	if (err)
		return err;

	inlen = FUNC7(create_sq_in) + sizeof(u64) * ncont;
	in = FUNC11(inlen, GFP_KERNEL);
	if (!in) {
		err = -ENOMEM;
		goto err_umem;
	}

	FUNC5(create_sq_in, in, uid, FUNC15(pd)->uid);
	sqc = FUNC0(create_sq_in, in, ctx);
	FUNC5(sqc, sqc, flush_in_error_en, 1);
	if (FUNC1(dev->mdev, multi_pkt_send_wqe))
		FUNC5(sqc, sqc, allow_multi_pkt_send_wqe, 1);
	FUNC5(sqc, sqc, state, MLX5_SQC_STATE_RST);
	FUNC5(sqc, sqc, user_index, FUNC3(qpc, qpc, user_index));
	FUNC5(sqc, sqc, cqn, FUNC3(qpc, qpc, cqn_snd));
	FUNC5(sqc, sqc, tis_lst_sz, 1);
	FUNC5(sqc, sqc, tis_num_0, sq->tisn);
	if (FUNC2(dev->mdev, eth_net_offloads) &&
	    FUNC1(dev->mdev, swp))
		FUNC5(sqc, sqc, allow_swp, 1);

	wq = FUNC0(sqc, sqc, wq);
	FUNC5(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
	FUNC5(wq, wq, pd, FUNC3(qpc, qpc, pd));
	FUNC5(wq, wq, uar_page, FUNC3(qpc, qpc, uar_page));
	FUNC6(wq, wq, dbr_addr, FUNC4(qpc, qpc, dbr_addr));
	FUNC5(wq, wq, log_wq_stride, FUNC9(MLX5_SEND_WQE_BB));
	FUNC5(wq, wq, log_wq_sz, FUNC3(qpc, qpc, log_sq_size));
	FUNC5(wq, wq, log_wq_pg_sz,  page_shift - MLX5_ADAPTER_PAGE_SHIFT);
	FUNC5(wq, wq, page_offset, offset);

	pas = (__be64 *)FUNC0(wq, wq, pas);
	FUNC13(dev, sq->ubuffer.umem, page_shift, pas, 0);

	err = FUNC12(dev->mdev, in, inlen, &sq->base.mqp);

	FUNC10(in);

	if (err)
		goto err_umem;

	return 0;

err_umem:
	FUNC8(sq->ubuffer.umem);
	sq->ubuffer.umem = NULL;

	return err;
}