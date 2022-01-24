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
 int GEN10_GT_NOA_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RPM_CONFIG1 ; 
 int /*<<< orphan*/  FUNC2 (struct i915_perf_stream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct i915_perf_stream *stream)
{
	struct drm_i915_private *dev_priv = stream->dev_priv;

	/* Reset all contexts' slices/subslices configurations. */
	FUNC2(stream, NULL);

	/* Make sure we disable noa to save power. */
	FUNC1(RPM_CONFIG1,
		   FUNC0(RPM_CONFIG1) & ~GEN10_GT_NOA_ENABLE);
}