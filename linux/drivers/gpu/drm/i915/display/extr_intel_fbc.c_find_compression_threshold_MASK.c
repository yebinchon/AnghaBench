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
typedef  scalar_t__ u64 ;
struct drm_mm_node {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  dsm; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ U64_MAX ; 
 int FUNC3 (struct drm_i915_private*,struct drm_mm_node*,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct drm_i915_private *dev_priv,
				      struct drm_mm_node *node,
				      int size,
				      int fb_cpp)
{
	int compression_threshold = 1;
	int ret;
	u64 end;

	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
	 * reserved range size, so it always assumes the maximum (8mb) is used.
	 * If we enable FBC using a CFB on that memory range we'll get FIFO
	 * underruns, even if that range is not reserved by the BIOS. */
	if (FUNC1(dev_priv) || FUNC2(dev_priv))
		end = FUNC4(&dev_priv->dsm) - 8 * 1024 * 1024;
	else
		end = U64_MAX;

	/* HACK: This code depends on what we will do in *_enable_fbc. If that
	 * code changes, this code needs to change as well.
	 *
	 * The enable_fbc code will attempt to use one of our 2 compression
	 * thresholds, therefore, in that case, we only have 1 resort.
	 */

	/* Try to over-allocate to reduce reallocations and fragmentation. */
	ret = FUNC3(dev_priv, node, size <<= 1,
						   4096, 0, end);
	if (ret == 0)
		return compression_threshold;

again:
	/* HW's ability to limit the CFB is 1:4 */
	if (compression_threshold > 4 ||
	    (fb_cpp == 2 && compression_threshold == 2))
		return 0;

	ret = FUNC3(dev_priv, node, size >>= 1,
						   4096, 0, end);
	if (ret && FUNC0(dev_priv) <= 4) {
		return 0;
	} else if (ret) {
		compression_threshold <<= 1;
		goto again;
	} else {
		return compression_threshold;
	}
}