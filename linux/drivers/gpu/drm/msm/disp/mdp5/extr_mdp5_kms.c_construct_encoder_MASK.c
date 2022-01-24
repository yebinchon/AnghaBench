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
struct msm_drm_private {int /*<<< orphan*/  num_encoders; struct drm_encoder** encoders; } ;
struct mdp5_kms {struct drm_device* dev; } ;
struct mdp5_interface {int dummy; } ;
struct mdp5_ctl {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC2 (struct drm_device*,struct mdp5_interface*,struct mdp5_ctl*) ; 

__attribute__((used)) static struct drm_encoder *FUNC3(struct mdp5_kms *mdp5_kms,
					     struct mdp5_interface *intf,
					     struct mdp5_ctl *ctl)
{
	struct drm_device *dev = mdp5_kms->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct drm_encoder *encoder;

	encoder = FUNC2(dev, intf, ctl);
	if (FUNC1(encoder)) {
		FUNC0(dev->dev, "failed to construct encoder\n");
		return encoder;
	}

	priv->encoders[priv->num_encoders++] = encoder;

	return encoder;
}