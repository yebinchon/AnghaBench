#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mdata; int /*<<< orphan*/  ddata; int /*<<< orphan*/  opcfg; int /*<<< orphan*/  pcfg; int /*<<< orphan*/  test; int /*<<< orphan*/  cydata; } ;
struct cyttsp4_sysinfo {int /*<<< orphan*/  btn_rec_data; int /*<<< orphan*/  xy_data; int /*<<< orphan*/  xy_mode; int /*<<< orphan*/  btn; TYPE_1__ si_ptrs; } ;
struct cyttsp4 {struct cyttsp4_sysinfo sysinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct cyttsp4 *cd)
{
	struct cyttsp4_sysinfo *si = &cd->sysinfo;

	if (!si)
		return;

	FUNC0(si->si_ptrs.cydata);
	FUNC0(si->si_ptrs.test);
	FUNC0(si->si_ptrs.pcfg);
	FUNC0(si->si_ptrs.opcfg);
	FUNC0(si->si_ptrs.ddata);
	FUNC0(si->si_ptrs.mdata);
	FUNC0(si->btn);
	FUNC0(si->xy_mode);
	FUNC0(si->xy_data);
	FUNC0(si->btn_rec_data);
}