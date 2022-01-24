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
struct hfi1_devdata {int dummy; } ;
struct err_reg_info {scalar_t__ handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,struct err_reg_info const*) ; 
 struct err_reg_info* misc_errs ; 

__attribute__((used)) static void FUNC2(struct hfi1_devdata *dd, unsigned int source)
{
	const struct err_reg_info *eri = &misc_errs[source];

	if (eri->handler) {
		FUNC1(dd, 0, eri);
	} else {
		FUNC0(dd, "Unexpected misc interrupt (%u) - reserved\n",
			   source);
	}
}