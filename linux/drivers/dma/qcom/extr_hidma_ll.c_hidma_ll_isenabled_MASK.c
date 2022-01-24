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
typedef  int /*<<< orphan*/  u32 ;
struct hidma_lldev {void* evch_state; void* trch_state; scalar_t__ evca; scalar_t__ trca; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HIDMA_EVCA_CTRLSTS_REG ; 
 scalar_t__ HIDMA_TRCA_CTRLSTS_REG ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

bool FUNC3(struct hidma_lldev *lldev)
{
	u32 val;

	val = FUNC2(lldev->trca + HIDMA_TRCA_CTRLSTS_REG);
	lldev->trch_state = FUNC0(val);
	val = FUNC2(lldev->evca + HIDMA_EVCA_CTRLSTS_REG);
	lldev->evch_state = FUNC0(val);

	/* both channels have to be enabled before calling this function */
	if (FUNC1(lldev->trch_state) &&
	    FUNC1(lldev->evch_state))
		return true;

	return false;
}