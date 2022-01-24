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
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
#define  DP_SDP_PPS 134 
#define  DP_SDP_VSC 133 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  HDMI_INFOFRAME_TYPE_AVI 132 
#define  HDMI_INFOFRAME_TYPE_DRM 131 
#define  HDMI_INFOFRAME_TYPE_SPD 130 
#define  HDMI_INFOFRAME_TYPE_VENDOR 129 
#define  HDMI_PACKET_TYPE_GAMUT_METADATA 128 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  INVALID_MMIO_REG ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

__attribute__((used)) static i915_reg_t
FUNC8(struct drm_i915_private *dev_priv,
		 enum transcoder cpu_transcoder,
		 unsigned int type,
		 int i)
{
	switch (type) {
	case HDMI_PACKET_TYPE_GAMUT_METADATA:
		return FUNC2(cpu_transcoder, i);
	case DP_SDP_VSC:
		return FUNC4(cpu_transcoder, i);
	case DP_SDP_PPS:
		return FUNC6(cpu_transcoder, i);
	case HDMI_INFOFRAME_TYPE_AVI:
		return FUNC1(cpu_transcoder, i);
	case HDMI_INFOFRAME_TYPE_SPD:
		return FUNC3(cpu_transcoder, i);
	case HDMI_INFOFRAME_TYPE_VENDOR:
		return FUNC5(cpu_transcoder, i);
	case HDMI_INFOFRAME_TYPE_DRM:
		return FUNC0(cpu_transcoder, i);
	default:
		FUNC7(type);
		return INVALID_MMIO_REG;
	}
}