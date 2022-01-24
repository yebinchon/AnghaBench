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
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  STATUS_CTXT_HALTED_SMASK ; 
 int FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC2(struct hfi1_devdata *dd, u32 hw_context)
{
	return !!(FUNC1(dd, hw_context, FUNC0(STATUS)) &
		  FUNC0(STATUS_CTXT_HALTED_SMASK));
}