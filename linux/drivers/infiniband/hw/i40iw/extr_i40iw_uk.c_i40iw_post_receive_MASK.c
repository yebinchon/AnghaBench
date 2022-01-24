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
typedef  int u64 ;
typedef  size_t u32 ;
struct i40iw_qp_uk {size_t max_rq_frag_cnt; int rwqe_polarity; int /*<<< orphan*/ * rq_wrid_array; } ;
struct i40iw_post_rq_info {size_t num_sges; TYPE_1__* sg_list; int /*<<< orphan*/  wr_id; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IWQPSQ_ADDFRAGCNT ; 
 int /*<<< orphan*/  I40IWQPSQ_VALID ; 
 int I40IW_ERR_INVALID_FRAG_COUNT ; 
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int* FUNC1 (struct i40iw_qp_uk*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static enum i40iw_status_code FUNC5(struct i40iw_qp_uk *qp,
						 struct i40iw_post_rq_info *info)
{
	u64 *wqe;
	u64 header;
	u32 total_size = 0, wqe_idx, i, byte_off;

	if (qp->max_rq_frag_cnt < info->num_sges)
		return I40IW_ERR_INVALID_FRAG_COUNT;
	for (i = 0; i < info->num_sges; i++)
		total_size += info->sg_list[i].len;
	wqe = FUNC1(qp, &wqe_idx);
	if (!wqe)
		return I40IW_ERR_QP_TOOMANY_WRS_POSTED;

	qp->rq_wrid_array[wqe_idx] = info->wr_id;
	FUNC3(wqe, 16, 0);

	header = FUNC0((info->num_sges > 1 ? (info->num_sges - 1) : 0),
		       I40IWQPSQ_ADDFRAGCNT) |
	    FUNC0(qp->rwqe_polarity, I40IWQPSQ_VALID);

	FUNC2(wqe, 0, info->sg_list);

	for (i = 1, byte_off = 32; i < info->num_sges; i++) {
		FUNC2(wqe, byte_off, &info->sg_list[i]);
		byte_off += 16;
	}

	FUNC4(); /* make sure WQE is populated before valid bit is set */

	FUNC3(wqe, 24, header);

	return 0;
}