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
struct TYPE_2__ {struct device* dev; int /*<<< orphan*/ * ops; } ;
struct i915_audio_component {scalar_t__* aud_sample_rate; TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; struct i915_audio_component* audio_component; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DL_FLAG_STATELESS ; 
 int EEXIST ; 
 int ENOMEM ; 
 scalar_t__ I915_MAX_PORTS ; 
 scalar_t__ MAX_PORTS ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i915_audio_component_ops ; 
 struct drm_i915_private* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *i915_kdev,
				     struct device *hda_kdev, void *data)
{
	struct i915_audio_component *acomp = data;
	struct drm_i915_private *dev_priv = FUNC6(i915_kdev);
	int i;

	if (FUNC2(acomp->base.ops || acomp->base.dev))
		return -EEXIST;

	if (FUNC2(!FUNC3(hda_kdev, i915_kdev, DL_FLAG_STATELESS)))
		return -ENOMEM;

	FUNC4(&dev_priv->drm);
	acomp->base.ops = &i915_audio_component_ops;
	acomp->base.dev = i915_kdev;
	FUNC1(MAX_PORTS != I915_MAX_PORTS);
	for (i = 0; i < FUNC0(acomp->aud_sample_rate); i++)
		acomp->aud_sample_rate[i] = 0;
	dev_priv->audio_component = acomp;
	FUNC5(&dev_priv->drm);

	return 0;
}