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
struct dcn_dccg {int dummy; } ;
struct dccg {int dummy; } ;

/* Variables and functions */
 struct dcn_dccg* FUNC0 (struct dccg*) ; 
 int /*<<< orphan*/  FUNC1 (struct dcn_dccg*) ; 

void FUNC2(struct dccg **dccg)
{
	struct dcn_dccg *dccg_dcn = FUNC0(*dccg);

	FUNC1(dccg_dcn);
	*dccg = NULL;
}