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
typedef  long long u64 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCE_INT_CLEAR ; 
 int /*<<< orphan*/  CCE_INT_FORCE ; 
 int /*<<< orphan*/  CCE_INT_MASK ; 
 int /*<<< orphan*/  CCE_INT_STATUS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 long long FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,long long) ; 

__attribute__((used)) static int FUNC3(struct hfi1_devdata *dd)
{
	u64 reg;
	u64 all_bits = ~(u64)0;
	u64 mask;

	/* Clear CceIntMask[0] to avoid raising any interrupts */
	mask = FUNC1(dd, CCE_INT_MASK);
	FUNC2(dd, CCE_INT_MASK, 0ull);
	reg = FUNC1(dd, CCE_INT_MASK);
	if (reg)
		goto err_exit;

	/* Clear all interrupt status bits */
	FUNC2(dd, CCE_INT_CLEAR, all_bits);
	reg = FUNC1(dd, CCE_INT_STATUS);
	if (reg)
		goto err_exit;

	/* Set all interrupt status bits */
	FUNC2(dd, CCE_INT_FORCE, all_bits);
	reg = FUNC1(dd, CCE_INT_STATUS);
	if (reg != all_bits)
		goto err_exit;

	/* Restore the interrupt mask */
	FUNC2(dd, CCE_INT_CLEAR, all_bits);
	FUNC2(dd, CCE_INT_MASK, mask);

	return 0;
err_exit:
	FUNC2(dd, CCE_INT_MASK, mask);
	FUNC0(dd, "Interrupt registers not properly mapped by VMM\n");
	return -EINVAL;
}