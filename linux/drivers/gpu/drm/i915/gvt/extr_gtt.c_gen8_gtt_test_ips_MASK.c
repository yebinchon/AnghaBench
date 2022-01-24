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
struct intel_gvt_gtt_entry {scalar_t__ type; int val64; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int GEN8_PDE_IPS_64K ; 
 scalar_t__ GTT_TYPE_PPGTT_PDE_ENTRY ; 

__attribute__((used)) static bool FUNC1(struct intel_gvt_gtt_entry *e)
{
	if (FUNC0(e->type != GTT_TYPE_PPGTT_PDE_ENTRY))
		return false;

	return !!(e->val64 & GEN8_PDE_IPS_64K);
}