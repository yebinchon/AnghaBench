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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_set_misc ; 
 int /*<<< orphan*/  inner_ipv6_flow_label ; 
 int /*<<< orphan*/  outer_ipv6_flow_label ; 

__attribute__((used)) static void FUNC1(void *misc_c, void *misc_v, u32 mask, u32 val,
			   bool inner)
{
	if (inner) {
		FUNC0(fte_match_set_misc,
			 misc_c, inner_ipv6_flow_label, mask);
		FUNC0(fte_match_set_misc,
			 misc_v, inner_ipv6_flow_label, val);
	} else {
		FUNC0(fte_match_set_misc,
			 misc_c, outer_ipv6_flow_label, mask);
		FUNC0(fte_match_set_misc,
			 misc_v, outer_ipv6_flow_label, val);
	}
}