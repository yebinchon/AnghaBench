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
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FREE_PLOAD_CREDIT_MASK ; 
 int FREE_PLOAD_CREDIT_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct drm_i915_private *dev_priv,
					    enum transcoder dsi_trans)
{
	return (FUNC1(FUNC0(dsi_trans)) & FREE_PLOAD_CREDIT_MASK)
		>> FREE_PLOAD_CREDIT_SHIFT;
}