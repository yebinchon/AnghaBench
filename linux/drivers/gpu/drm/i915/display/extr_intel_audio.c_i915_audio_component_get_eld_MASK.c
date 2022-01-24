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
typedef  int /*<<< orphan*/  u8 ;
struct intel_encoder {TYPE_1__* audio_connector; } ;
struct drm_i915_private {int /*<<< orphan*/  av_mutex; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * eld; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 struct intel_encoder* FUNC2 (struct drm_i915_private*,int,int) ; 
 struct drm_i915_private* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct device *kdev, int port,
					int pipe, bool *enabled,
					unsigned char *buf, int max_bytes)
{
	struct drm_i915_private *dev_priv = FUNC3(kdev);
	struct intel_encoder *intel_encoder;
	const u8 *eld;
	int ret = -EINVAL;

	FUNC6(&dev_priv->av_mutex);

	intel_encoder = FUNC2(dev_priv, port, pipe);
	if (!intel_encoder) {
		FUNC0("Not valid for port %c\n", FUNC8(port));
		FUNC7(&dev_priv->av_mutex);
		return ret;
	}

	ret = 0;
	*enabled = intel_encoder->audio_connector != NULL;
	if (*enabled) {
		eld = intel_encoder->audio_connector->eld;
		ret = FUNC1(eld);
		FUNC4(buf, eld, FUNC5(max_bytes, ret));
	}

	FUNC7(&dev_priv->av_mutex);
	return ret;
}