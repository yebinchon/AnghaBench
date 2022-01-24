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
typedef  int /*<<< orphan*/  u32 ;
struct vl_limit {void* shared; void* dedicated; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_MASK ; 
 int SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_SHIFT ; 
 int SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_MASK ; 
 int SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_SHIFT ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hfi1_devdata *dd, u32 csr,
			   struct vl_limit *vll)
{
	u64 reg = FUNC1(dd, csr);

	vll->dedicated = FUNC0(
		(reg >> SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_SHIFT)
		& SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_MASK);
	vll->shared = FUNC0(
		(reg >> SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_SHIFT)
		& SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_MASK);
}