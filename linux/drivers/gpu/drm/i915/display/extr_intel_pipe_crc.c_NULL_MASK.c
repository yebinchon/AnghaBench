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
struct intel_pipe_crc {int source; scalar_t__ skipped; } ;
struct drm_i915_private {struct intel_pipe_crc* pipe_crc; } ;
struct drm_crtc {size_t index; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum intel_pipe_crc_source { ____Placeholder_intel_pipe_crc_source } intel_pipe_crc_source ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INTEL_PIPE_CRC_SOURCE_NONE ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (char const*,int*) ; 
 int FUNC9 (struct drm_i915_private*,size_t,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,size_t) ; 

int FUNC16(struct drm_crtc *crtc, const char *source_name)
{
	struct drm_i915_private *dev_priv = FUNC13(crtc->dev);
	struct intel_pipe_crc *pipe_crc = &dev_priv->pipe_crc[crtc->index];
	enum intel_display_power_domain power_domain;
	enum intel_pipe_crc_source source;
	intel_wakeref_t wakeref;
	u32 val = 0; /* shut up gcc */
	int ret = 0;
	bool enable;

	if (FUNC8(source_name, &source) < 0) {
		FUNC0("unknown source %s\n", source_name);
		return -EINVAL;
	}

	power_domain = FUNC7(crtc->index);
	wakeref = FUNC11(dev_priv, power_domain);
	if (!wakeref) {
		FUNC1("Trying to capture CRC while pipe is off\n");
		return -EIO;
	}

	enable = source != INTEL_PIPE_CRC_SOURCE_NONE;
	if (enable)
		FUNC10(FUNC14(crtc), true);

	ret = FUNC9(dev_priv, crtc->index, &source, &val);
	if (ret != 0)
		goto out;

	pipe_crc->source = source;
	FUNC2(FUNC5(crtc->index), val);
	FUNC6(FUNC5(crtc->index));

	if (!source) {
		if (FUNC4(dev_priv) || FUNC3(dev_priv))
			FUNC15(dev_priv, crtc->index);
	}

	pipe_crc->skipped = 0;

out:
	if (!enable)
		FUNC10(FUNC14(crtc), false);

	FUNC12(dev_priv, power_domain, wakeref);

	return ret;
}