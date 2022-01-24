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
typedef  scalar_t__ u32 ;
struct intel_gvt {int dummy; } ;
struct cmd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ INVALID_OP ; 
 struct cmd_info const* FUNC0 (struct intel_gvt*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static inline const struct cmd_info *FUNC2(struct intel_gvt *gvt,
		u32 cmd, int ring_id)
{
	u32 opcode;

	opcode = FUNC1(cmd, ring_id);
	if (opcode == INVALID_OP)
		return NULL;

	return FUNC0(gvt, opcode, ring_id);
}