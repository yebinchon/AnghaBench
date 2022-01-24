#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc {int /*<<< orphan*/  config; } ;
struct i915_audio_component {int* aud_sample_rate; } ;
struct drm_i915_private {int /*<<< orphan*/  av_mutex; struct i915_audio_component* audio_component; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 struct intel_encoder* FUNC2 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_encoder*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,unsigned long) ; 
 struct drm_i915_private* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct intel_crtc* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct device *kdev, int port,
						int pipe, int rate)
{
	struct drm_i915_private *dev_priv = FUNC6(kdev);
	struct i915_audio_component *acomp = dev_priv->audio_component;
	struct intel_encoder *encoder;
	struct intel_crtc *crtc;
	unsigned long cookie;
	int err = 0;

	if (!FUNC1(dev_priv))
		return 0;

	cookie = FUNC4(kdev);
	FUNC7(&dev_priv->av_mutex);

	/* 1. get the pipe */
	encoder = FUNC2(dev_priv, port, pipe);
	if (!encoder || !encoder->base.crtc) {
		FUNC0("Not valid for port %c\n", FUNC9(port));
		err = -ENODEV;
		goto unlock;
	}

	crtc = FUNC10(encoder->base.crtc);

	/* port must be valid now, otherwise the pipe will be invalid */
	acomp->aud_sample_rate[port] = rate;

	FUNC3(encoder, crtc->config);

 unlock:
	FUNC8(&dev_priv->av_mutex);
	FUNC5(kdev, cookie);
	return err;
}