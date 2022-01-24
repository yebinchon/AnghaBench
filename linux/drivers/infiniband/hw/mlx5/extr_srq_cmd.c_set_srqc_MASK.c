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
struct mlx5_srq_attr {int flags; int log_page_size; int wqe_shift; int log_size; int page_offset; int lwm; int pd; int xrcd; int cqn; int /*<<< orphan*/  db_record; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_SRQ_FLAG_WQ_SIG ; 
 int /*<<< orphan*/  cqn ; 
 int /*<<< orphan*/  dbr_addr ; 
 int /*<<< orphan*/  log_page_size ; 
 int /*<<< orphan*/  log_rq_stride ; 
 int /*<<< orphan*/  log_srq_size ; 
 int /*<<< orphan*/  lwm ; 
 int /*<<< orphan*/  page_offset ; 
 int /*<<< orphan*/  pd ; 
 int /*<<< orphan*/  wq_signature ; 
 int /*<<< orphan*/  xrcd ; 

__attribute__((used)) static void FUNC2(void *srqc, struct mlx5_srq_attr *in)
{
	FUNC0(srqc,   srqc, wq_signature,  !!(in->flags
		 & MLX5_SRQ_FLAG_WQ_SIG));
	FUNC0(srqc,   srqc, log_page_size, in->log_page_size);
	FUNC0(srqc,   srqc, log_rq_stride, in->wqe_shift);
	FUNC0(srqc,   srqc, log_srq_size,  in->log_size);
	FUNC0(srqc,   srqc, page_offset,   in->page_offset);
	FUNC0(srqc,	 srqc, lwm,	      in->lwm);
	FUNC0(srqc,	 srqc, pd,	      in->pd);
	FUNC1(srqc, srqc, dbr_addr,      in->db_record);
	FUNC0(srqc,	 srqc, xrcd,	      in->xrcd);
	FUNC0(srqc,	 srqc, cqn,	      in->cqn);
}