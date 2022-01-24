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
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private const*) ; 
 int PORT_B ; 
 int PORT_C ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(const struct drm_i915_private *dev_priv,
				   enum port port)
{
	if (FUNC0(dev_priv))
		FUNC1(port != PORT_B);
	else
		FUNC1(port != PORT_B && port != PORT_C);
}