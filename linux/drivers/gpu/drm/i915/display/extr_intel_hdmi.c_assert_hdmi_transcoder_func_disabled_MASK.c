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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TRANS_DDI_FUNC_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void
FUNC3(struct drm_i915_private *dev_priv,
				     enum transcoder cpu_transcoder)
{
	FUNC2(FUNC0(FUNC1(cpu_transcoder)) &
	     TRANS_DDI_FUNC_ENABLE,
	     "HDMI transcoder function enabled, expecting disabled\n");
}