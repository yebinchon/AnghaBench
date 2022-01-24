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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OACEC0_0 ; 
 int /*<<< orphan*/  OACEC7_1 ; 
 int /*<<< orphan*/  OAREPORTTRIG1 ; 
 int /*<<< orphan*/  OAREPORTTRIG8 ; 
 int /*<<< orphan*/  OASTARTTRIG1 ; 
 int /*<<< orphan*/  OASTARTTRIG8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct drm_i915_private *dev_priv, u32 addr)
{
	return (addr >= FUNC0(OASTARTTRIG1) &&
		addr <= FUNC0(OASTARTTRIG8)) ||
		(addr >= FUNC0(OAREPORTTRIG1) &&
		 addr <= FUNC0(OAREPORTTRIG8)) ||
		(addr >= FUNC0(OACEC0_0) &&
		 addr <= FUNC0(OACEC7_1));
}