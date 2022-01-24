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
struct TYPE_3__ {int /*<<< orphan*/  mqp; struct mlx5_ib_qp* container_mibqp; } ;
struct mlx5_ib_rq {int flags; TYPE_1__ base; } ;
struct mlx5_ib_qp {int flags; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_pd {int dummy; } ;
typedef  void __be64 ;
struct TYPE_4__ {int uid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,void*,void*) ; 
 size_t FUNC1 (void*,void*) ; 
 int FUNC2 (void*,void*,struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 int MLX5_IB_QP_CAP_SCATTER_FCS ; 
 int MLX5_IB_RQ_CVLAN_STRIPPING ; 
 int MLX5_IB_RQ_PCI_WRITE_END_PADDING ; 
 int MLX5_RQC_MEM_RQ_TYPE_MEMORY_RQ_INLINE ; 
 int MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,struct ib_pd*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (void*) ; 
 int MLX5_WQ_END_PAD_MODE_ALIGN ; 
 int MLX5_WQ_TYPE_CYCLIC ; 
 struct ib_pd* cqn ; 
 struct ib_pd* cqn_rcv ; 
 void* create_qp_in ; 
 void* create_rq_in ; 
 void* ctx ; 
 int /*<<< orphan*/  dbr_addr ; 
 struct ib_pd* end_padding_mode ; 
 struct ib_pd* flush_in_error_en ; 
 size_t FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 struct ib_pd* log_page_size ; 
 struct ib_pd* log_rq_size ; 
 struct ib_pd* log_rq_stride ; 
 struct ib_pd* log_wq_pg_sz ; 
 struct ib_pd* log_wq_stride ; 
 struct ib_pd* log_wq_sz ; 
 struct ib_pd* mem_rq_type ; 
 int /*<<< orphan*/  FUNC10 (void*,void*,size_t) ; 
 int FUNC11 (int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ *) ; 
 struct ib_pd* page_offset ; 
 void* qpc ; 
 struct ib_pd* scatter_fcs ; 
 struct ib_pd* state ; 
 TYPE_2__* FUNC12 (struct ib_pd*) ; 
 struct ib_pd* uid ; 
 struct ib_pd* user_index ; 
 struct ib_pd* vsd ; 
 struct ib_pd* wq_type ; 

__attribute__((used)) static int FUNC13(struct mlx5_ib_dev *dev,
				   struct mlx5_ib_rq *rq, void *qpin,
				   size_t qpinlen, struct ib_pd *pd)
{
	struct mlx5_ib_qp *mqp = rq->base.container_mibqp;
	__be64 *pas;
	__be64 *qp_pas;
	void *in;
	void *rqc;
	void *wq;
	void *qpc = FUNC0(create_qp_in, qpin, qpc);
	size_t rq_pas_size = FUNC7(qpc);
	size_t inlen;
	int err;

	if (qpinlen < rq_pas_size + FUNC1(create_qp_in, pas))
		return -EINVAL;

	inlen = FUNC6(create_rq_in) + rq_pas_size;
	in = FUNC9(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC4(create_rq_in, in, uid, FUNC12(pd)->uid);
	rqc = FUNC0(create_rq_in, in, ctx);
	if (!(rq->flags & MLX5_IB_RQ_CVLAN_STRIPPING))
		FUNC4(rqc, rqc, vsd, 1);
	FUNC4(rqc, rqc, mem_rq_type, MLX5_RQC_MEM_RQ_TYPE_MEMORY_RQ_INLINE);
	FUNC4(rqc, rqc, state, MLX5_RQC_STATE_RST);
	FUNC4(rqc, rqc, flush_in_error_en, 1);
	FUNC4(rqc, rqc, user_index, FUNC2(qpc, qpc, user_index));
	FUNC4(rqc, rqc, cqn, FUNC2(qpc, qpc, cqn_rcv));

	if (mqp->flags & MLX5_IB_QP_CAP_SCATTER_FCS)
		FUNC4(rqc, rqc, scatter_fcs, 1);

	wq = FUNC0(rqc, rqc, wq);
	FUNC4(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
	if (rq->flags & MLX5_IB_RQ_PCI_WRITE_END_PADDING)
		FUNC4(wq, wq, end_padding_mode, MLX5_WQ_END_PAD_MODE_ALIGN);
	FUNC4(wq, wq, page_offset, FUNC2(qpc, qpc, page_offset));
	FUNC4(wq, wq, pd, FUNC2(qpc, qpc, pd));
	FUNC5(wq, wq, dbr_addr, FUNC3(qpc, qpc, dbr_addr));
	FUNC4(wq, wq, log_wq_stride, FUNC2(qpc, qpc, log_rq_stride) + 4);
	FUNC4(wq, wq, log_wq_pg_sz, FUNC2(qpc, qpc, log_page_size));
	FUNC4(wq, wq, log_wq_sz, FUNC2(qpc, qpc, log_rq_size));

	pas = (__be64 *)FUNC0(wq, wq, pas);
	qp_pas = (__be64 *)FUNC0(create_qp_in, qpin, pas);
	FUNC10(pas, qp_pas, rq_pas_size);

	err = FUNC11(dev->mdev, in, inlen, &rq->base.mqp);

	FUNC8(in);

	return err;
}