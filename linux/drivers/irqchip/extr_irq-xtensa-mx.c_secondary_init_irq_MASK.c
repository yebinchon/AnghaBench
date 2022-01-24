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

/* Variables and functions */
 int XCHAL_INTTYPE_MASK_EXTERN_EDGE ; 
 int XCHAL_INTTYPE_MASK_EXTERN_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cached_irq_mask ; 
 int /*<<< orphan*/  intenable ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	FUNC0(cached_irq_mask,
			XCHAL_INTTYPE_MASK_EXTERN_EDGE |
			XCHAL_INTTYPE_MASK_EXTERN_LEVEL);
	FUNC1(XCHAL_INTTYPE_MASK_EXTERN_EDGE |
			XCHAL_INTTYPE_MASK_EXTERN_LEVEL, intenable);
}