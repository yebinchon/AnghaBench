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
typedef  int u8 ;
typedef  int u32 ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int I40IW_ERR_INVALID_SIZE ; 
 int I40IW_QP_SW_MAX_RQ_QUANTAS ; 
 int I40IW_QP_SW_MIN_WQSIZE ; 
 scalar_t__ I40IW_RQ_RSVD ; 
 int FUNC0 (scalar_t__) ; 

enum i40iw_status_code FUNC1(u32 rq_size, u8 shift, u32 *rqdepth)
{
	*rqdepth = FUNC0((rq_size << shift) + I40IW_RQ_RSVD);

	if (*rqdepth < (I40IW_QP_SW_MIN_WQSIZE << shift))
		*rqdepth = I40IW_QP_SW_MIN_WQSIZE << shift;
	else if (*rqdepth > I40IW_QP_SW_MAX_RQ_QUANTAS)
		return I40IW_ERR_INVALID_SIZE;

	return 0;
}