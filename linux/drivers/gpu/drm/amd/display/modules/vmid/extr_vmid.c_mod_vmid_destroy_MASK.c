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
struct mod_vmid {int dummy; } ;
struct core_vmid {int dummy; } ;

/* Variables and functions */
 struct core_vmid* FUNC0 (struct mod_vmid*) ; 
 int /*<<< orphan*/  FUNC1 (struct core_vmid*) ; 

void FUNC2(struct mod_vmid *mod_vmid)
{
	if (mod_vmid != NULL) {
		struct core_vmid *core_vmid = FUNC0(mod_vmid);

		FUNC1(core_vmid);
	}
}