#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct flexcop_device {TYPE_1__ (* read_ibi_reg ) (struct flexcop_device*,scalar_t__) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  raw; } ;
typedef  TYPE_1__ flexcop_ibi_value ;
typedef  scalar_t__ flexcop_ibi_register ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__ FUNC1 (struct flexcop_device*,scalar_t__) ; 

void FUNC2(struct flexcop_device *fc,
		flexcop_ibi_register reg, int num)
{
	flexcop_ibi_value v;
	int i;
	for (i = 0; i < num; i++) {
		v = fc->read_ibi_reg(fc, reg+4*i);
		FUNC0("0x%03x: %08x, ", reg+4*i, v.raw);
	}
	FUNC0("\n");
}