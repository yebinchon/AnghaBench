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
typedef  unsigned long u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct hfi1_devdata {int flags; scalar_t__ rcvarray_wc; } ;

/* Variables and functions */
 int HFI1_PRESENT ; 
 scalar_t__ PT_EAGER ; 
 scalar_t__ PT_INVALID ; 
 scalar_t__ PT_INVALID_FLUSH ; 
 unsigned long RCV_ARRAY_RT_ADDR_MASK ; 
 unsigned long RCV_ARRAY_RT_ADDR_SHIFT ; 
 unsigned long RCV_ARRAY_RT_BUF_SIZE_SHIFT ; 
 unsigned long RCV_ARRAY_RT_WRITE_ENABLE_SMASK ; 
 unsigned long RT_ADDR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,scalar_t__,scalar_t__,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

void FUNC5(struct hfi1_devdata *dd, u32 index,
		  u32 type, unsigned long pa, u16 order)
{
	u64 reg;

	if (!(dd->flags & HFI1_PRESENT))
		goto done;

	if (type == PT_INVALID || type == PT_INVALID_FLUSH) {
		pa = 0;
		order = 0;
	} else if (type > PT_INVALID) {
		FUNC0(dd,
			   "unexpected receive array type %u for index %u, not handled\n",
			   type, index);
		goto done;
	}
	FUNC2(dd, index, type, pa, order);

#define RT_ADDR_SHIFT 12	/* 4KB kernel address boundary */
	reg = RCV_ARRAY_RT_WRITE_ENABLE_SMASK
		| (u64)order << RCV_ARRAY_RT_BUF_SIZE_SHIFT
		| ((pa >> RT_ADDR_SHIFT) & RCV_ARRAY_RT_ADDR_MASK)
					<< RCV_ARRAY_RT_ADDR_SHIFT;
	FUNC3(dd->rcvarray_wc + (index * 8), reg);
	FUNC4(reg, dd->rcvarray_wc + (index * 8));

	if (type == PT_EAGER || type == PT_INVALID_FLUSH || (index & 3) == 3)
		/*
		 * Eager entries are written and flushed
		 *
		 * Expected entries are flushed every 4 writes
		 */
		FUNC1();
done:
	return;
}