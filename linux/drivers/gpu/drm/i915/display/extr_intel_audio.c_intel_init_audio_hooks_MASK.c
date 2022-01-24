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
struct TYPE_2__ {void* audio_codec_disable; void* audio_codec_enable; } ;
struct drm_i915_private {TYPE_1__ display; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 void* g4x_audio_codec_disable ; 
 void* g4x_audio_codec_enable ; 
 void* hsw_audio_codec_disable ; 
 void* hsw_audio_codec_enable ; 
 void* ilk_audio_codec_disable ; 
 void* ilk_audio_codec_enable ; 

void FUNC6(struct drm_i915_private *dev_priv)
{
	if (FUNC3(dev_priv)) {
		dev_priv->display.audio_codec_enable = g4x_audio_codec_enable;
		dev_priv->display.audio_codec_disable = g4x_audio_codec_disable;
	} else if (FUNC5(dev_priv) || FUNC2(dev_priv)) {
		dev_priv->display.audio_codec_enable = ilk_audio_codec_enable;
		dev_priv->display.audio_codec_disable = ilk_audio_codec_disable;
	} else if (FUNC4(dev_priv) || FUNC1(dev_priv) >= 8) {
		dev_priv->display.audio_codec_enable = hsw_audio_codec_enable;
		dev_priv->display.audio_codec_disable = hsw_audio_codec_disable;
	} else if (FUNC0(dev_priv)) {
		dev_priv->display.audio_codec_enable = ilk_audio_codec_enable;
		dev_priv->display.audio_codec_disable = ilk_audio_codec_disable;
	}
}