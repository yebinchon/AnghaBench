#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cyttsp4_mt_data {scalar_t__ num_prv_tch; int /*<<< orphan*/  input; TYPE_3__* si; } ;
struct TYPE_5__ {TYPE_1__* tch_abs; } ;
struct TYPE_6__ {TYPE_2__ si_ofs; } ;
struct TYPE_4__ {int /*<<< orphan*/  max; } ;

/* Variables and functions */
 size_t CY_TCH_T ; 
 int /*<<< orphan*/  FUNC0 (struct cyttsp4_mt_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cyttsp4_mt_data *md)
{
	if (!md->si)
		return;

	if (md->num_prv_tch != 0) {
		FUNC0(md,
				md->si->si_ofs.tch_abs[CY_TCH_T].max);
		FUNC1(md->input);
		md->num_prv_tch = 0;
	}
}