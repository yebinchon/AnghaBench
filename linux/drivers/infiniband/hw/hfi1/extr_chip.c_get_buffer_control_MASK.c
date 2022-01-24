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
typedef  int u16 ;
struct hfi1_devdata {int dummy; } ;
struct buffer_control {int /*<<< orphan*/  overall_shared_limit; int /*<<< orphan*/ * vl; } ;

/* Variables and functions */
 scalar_t__ SEND_CM_CREDIT_VL ; 
 scalar_t__ SEND_CM_CREDIT_VL15 ; 
 int /*<<< orphan*/  SEND_CM_GLOBAL_CREDIT ; 
 int SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_MASK ; 
 int SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_SHIFT ; 
 int SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_MASK ; 
 int SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT ; 
 int TXE_NUM_DATA_VL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_control*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hfi1_devdata *dd,
			      struct buffer_control *bc, u16 *overall_limit)
{
	u64 reg;
	int i;

	/* not all entries are filled in */
	FUNC1(bc, 0, sizeof(*bc));

	/* OPA and HFI have a 1-1 mapping */
	for (i = 0; i < TXE_NUM_DATA_VL; i++)
		FUNC3(dd, SEND_CM_CREDIT_VL + (8 * i), &bc->vl[i]);

	/* NOTE: assumes that VL* and VL15 CSRs are bit-wise identical */
	FUNC3(dd, SEND_CM_CREDIT_VL15, &bc->vl[15]);

	reg = FUNC2(dd, SEND_CM_GLOBAL_CREDIT);
	bc->overall_shared_limit = FUNC0(
		(reg >> SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_SHIFT)
		& SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_MASK);
	if (overall_limit)
		*overall_limit = (reg
			>> SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT)
			& SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_MASK;
	return sizeof(struct buffer_control);
}