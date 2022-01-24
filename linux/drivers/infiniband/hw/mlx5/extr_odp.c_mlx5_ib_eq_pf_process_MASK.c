#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int wq_num; void* wqe_index; void* packet_size; } ;
struct TYPE_8__ {int r_key; int rdma_op_len; int /*<<< orphan*/  rdma_va; void* packet_size; } ;
struct mlx5_pagefault {int event_subtype; int bytes_committed; int type; int token; int /*<<< orphan*/  work; struct mlx5_ib_pf_eq* eq; TYPE_5__ wqe; TYPE_3__ rdma; } ;
struct mlx5_ib_pf_eq {int /*<<< orphan*/  core; int /*<<< orphan*/  wq; int /*<<< orphan*/  dev; int /*<<< orphan*/  work; int /*<<< orphan*/  pool; } ;
struct TYPE_9__ {int /*<<< orphan*/  packet_length; int /*<<< orphan*/  wqe_index; int /*<<< orphan*/  pftype_wq; int /*<<< orphan*/  token; } ;
struct TYPE_7__ {int /*<<< orphan*/  rdma_va; int /*<<< orphan*/  rdma_op_len; int /*<<< orphan*/  packet_length; int /*<<< orphan*/  r_key; int /*<<< orphan*/  pftype_token; } ;
struct mlx5_eqe_page_fault {TYPE_4__ wqe; TYPE_2__ rdma; int /*<<< orphan*/  bytes_committed; } ;
struct TYPE_6__ {struct mlx5_eqe_page_fault page_fault; } ;
struct mlx5_eqe {int sub_type; TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_24BIT_MASK ; 
#define  MLX5_PFAULT_SUBTYPE_RDMA 129 
#define  MLX5_PFAULT_SUBTYPE_WQE 128 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx5_pagefault* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_eqe* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  mlx5_ib_eqe_pf_action ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct mlx5_ib_pf_eq *eq)
{
	struct mlx5_eqe_page_fault *pf_eqe;
	struct mlx5_pagefault *pfault;
	struct mlx5_eqe *eqe;
	int cc = 0;

	while ((eqe = FUNC5(eq->core, cc))) {
		pfault = FUNC4(eq->pool, GFP_ATOMIC);
		if (!pfault) {
			FUNC11(&eq->work);
			break;
		}

		pf_eqe = &eqe->data.page_fault;
		pfault->event_subtype = eqe->sub_type;
		pfault->bytes_committed = FUNC2(pf_eqe->bytes_committed);

		FUNC8(eq->dev,
			    "PAGE_FAULT: subtype: 0x%02x, bytes_committed: 0x%06x\n",
			    eqe->sub_type, pfault->bytes_committed);

		switch (eqe->sub_type) {
		case MLX5_PFAULT_SUBTYPE_RDMA:
			/* RDMA based event */
			pfault->type =
				FUNC2(pf_eqe->rdma.pftype_token) >> 24;
			pfault->token =
				FUNC2(pf_eqe->rdma.pftype_token) &
				MLX5_24BIT_MASK;
			pfault->rdma.r_key =
				FUNC2(pf_eqe->rdma.r_key);
			pfault->rdma.packet_size =
				FUNC1(pf_eqe->rdma.packet_length);
			pfault->rdma.rdma_op_len =
				FUNC2(pf_eqe->rdma.rdma_op_len);
			pfault->rdma.rdma_va =
				FUNC3(pf_eqe->rdma.rdma_va);
			FUNC8(eq->dev,
				    "PAGE_FAULT: type:0x%x, token: 0x%06x, r_key: 0x%08x\n",
				    pfault->type, pfault->token,
				    pfault->rdma.r_key);
			FUNC8(eq->dev,
				    "PAGE_FAULT: rdma_op_len: 0x%08x, rdma_va: 0x%016llx\n",
				    pfault->rdma.rdma_op_len,
				    pfault->rdma.rdma_va);
			break;

		case MLX5_PFAULT_SUBTYPE_WQE:
			/* WQE based event */
			pfault->type =
				(FUNC2(pf_eqe->wqe.pftype_wq) >> 24) & 0x7;
			pfault->token =
				FUNC2(pf_eqe->wqe.token);
			pfault->wqe.wq_num =
				FUNC2(pf_eqe->wqe.pftype_wq) &
				MLX5_24BIT_MASK;
			pfault->wqe.wqe_index =
				FUNC1(pf_eqe->wqe.wqe_index);
			pfault->wqe.packet_size =
				FUNC1(pf_eqe->wqe.packet_length);
			FUNC8(eq->dev,
				    "PAGE_FAULT: type:0x%x, token: 0x%06x, wq_num: 0x%06x, wqe_index: 0x%04x\n",
				    pfault->type, pfault->token,
				    pfault->wqe.wq_num,
				    pfault->wqe.wqe_index);
			break;

		default:
			FUNC9(eq->dev,
				     "Unsupported page fault event sub-type: 0x%02hhx\n",
				     eqe->sub_type);
			/* Unsupported page faults should still be
			 * resolved by the page fault handler
			 */
		}

		pfault->eq = eq;
		FUNC0(&pfault->work, mlx5_ib_eqe_pf_action);
		FUNC10(eq->wq, &pfault->work);

		cc = FUNC6(eq->core, ++cc);
	}

	FUNC7(eq->core, cc, 1);
}