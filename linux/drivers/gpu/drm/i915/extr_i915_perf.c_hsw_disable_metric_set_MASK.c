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
struct i915_perf_stream {struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDT_CHICKEN_BITS ; 
 int GEN6_CSUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN6_UCGCTL1 ; 
 int GEN7_DOP_CLOCK_GATE_ENABLE ; 
 int /*<<< orphan*/  GEN7_MISCCPCTL ; 
 int GT_NOA_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i915_perf_stream *stream)
{
	struct drm_i915_private *dev_priv = stream->dev_priv;

	FUNC1(GEN6_UCGCTL1, (FUNC0(GEN6_UCGCTL1) &
				  ~GEN6_CSUNIT_CLOCK_GATE_DISABLE));
	FUNC1(GEN7_MISCCPCTL, (FUNC0(GEN7_MISCCPCTL) |
				    GEN7_DOP_CLOCK_GATE_ENABLE));

	FUNC1(GDT_CHICKEN_BITS, (FUNC0(GDT_CHICKEN_BITS) &
				      ~GT_NOA_ENABLE));
}