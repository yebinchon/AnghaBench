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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u16 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 scalar_t__ BITS_PER_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ NUM_INTERRUPT_SOURCES ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,scalar_t__,scalar_t__,int) ; 

int FUNC2(struct hfi1_devdata *dd, u16 first, u16 last, bool set)
{
	u64 bits = 0;
	u64 bit;
	u16 src;

	if (first > NUM_INTERRUPT_SOURCES || last > NUM_INTERRUPT_SOURCES)
		return -EINVAL;

	if (last < first)
		return -ERANGE;

	for (src = first; src <= last; src++) {
		bit = src % BITS_PER_REGISTER;
		/* wrapped to next register? */
		if (!bit && bits) {
			FUNC1(dd, src - 1, bits, set);
			bits = 0;
		}
		bits |= FUNC0(bit);
	}
	FUNC1(dd, last, bits, set);

	return 0;
}