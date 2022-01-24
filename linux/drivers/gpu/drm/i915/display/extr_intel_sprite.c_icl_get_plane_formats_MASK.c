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
struct drm_i915_private {int dummy; } ;
typedef  enum plane_id { ____Placeholder_plane_id } plane_id ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* icl_hdr_plane_formats ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  const* icl_sdr_uv_plane_formats ; 
 int /*<<< orphan*/  const* icl_sdr_y_plane_formats ; 

__attribute__((used)) static const u32 *FUNC3(struct drm_i915_private *dev_priv,
					enum pipe pipe, enum plane_id plane_id,
					int *num_formats)
{
	if (FUNC1(dev_priv, plane_id)) {
		*num_formats = FUNC0(icl_hdr_plane_formats);
		return icl_hdr_plane_formats;
	} else if (FUNC2(plane_id)) {
		*num_formats = FUNC0(icl_sdr_y_plane_formats);
		return icl_sdr_y_plane_formats;
	} else {
		*num_formats = FUNC0(icl_sdr_uv_plane_formats);
		return icl_sdr_uv_plane_formats;
	}
}