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
struct TYPE_2__ {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; } ;
struct i915_audio_component {TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; int /*<<< orphan*/ * audio_component; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *i915_kdev,
					struct device *hda_kdev, void *data)
{
	struct i915_audio_component *acomp = data;
	struct drm_i915_private *dev_priv = FUNC3(i915_kdev);

	FUNC1(&dev_priv->drm);
	acomp->base.ops = NULL;
	acomp->base.dev = NULL;
	dev_priv->audio_component = NULL;
	FUNC2(&dev_priv->drm);

	FUNC0(hda_kdev, i915_kdev);
}