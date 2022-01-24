#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct flexcop_device {int skip_6_hw_pid_filter; int has_32_hw_pid_filter; int /*<<< orphan*/  (* write_ibi_reg ) (struct flexcop_device*,int /*<<< orphan*/ ,TYPE_2__) ;TYPE_2__ (* read_ibi_reg ) (struct flexcop_device*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int EMM_filter_4; scalar_t__ EMM_filter_6; } ;
struct TYPE_6__ {TYPE_1__ pid_filter_308; } ;
typedef  TYPE_2__ flexcop_ibi_value ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flexcop_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct flexcop_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct flexcop_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct flexcop_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pid_filter_308 ; 
 TYPE_2__ FUNC4 (struct flexcop_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct flexcop_device*,int /*<<< orphan*/ ,TYPE_2__) ; 

void FUNC6(struct flexcop_device *fc)
{
	int i;
	flexcop_ibi_value v;
	int max_pid_filter = 6;

	max_pid_filter -= 6 * fc->skip_6_hw_pid_filter;
	max_pid_filter += 32 * fc->has_32_hw_pid_filter;

	for (i = 0; i < max_pid_filter; i++)
		FUNC1(fc, i, 0x1fff, 0);

	FUNC2(fc, 0, 0x1fe0);
	FUNC3(fc, 0);

	v = fc->read_ibi_reg(fc, pid_filter_308);
	v.pid_filter_308.EMM_filter_4 = 1;
	v.pid_filter_308.EMM_filter_6 = 0;
	fc->write_ibi_reg(fc, pid_filter_308, v);

	FUNC0(fc, 1);
}