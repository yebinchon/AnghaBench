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
struct resource_caps {int dummy; } ;
struct hw_asic_id {int /*<<< orphan*/  hw_internal_rev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct resource_caps const polaris_10_resource_cap ; 
 struct resource_caps const polaris_11_resource_cap ; 

const struct resource_caps *FUNC2(
	struct hw_asic_id *asic_id)
{
	if (FUNC0(asic_id->hw_internal_rev) ||
	    FUNC1(asic_id->hw_internal_rev))
		return &polaris_11_resource_cap;
	else
		return &polaris_10_resource_cap;
}