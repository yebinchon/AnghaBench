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
typedef  int uint32_t ;
struct msm_kms {int dummy; } ;
struct msm_drm_private {unsigned int num_crtcs; int /*<<< orphan*/ * crtcs; } ;
struct mdp_kms {int dummy; } ;
struct mdp4_kms {struct drm_device* dev; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_MDP4_INTR_CLEAR ; 
 int /*<<< orphan*/  REG_MDP4_INTR_ENABLE ; 
 int /*<<< orphan*/  REG_MDP4_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mdp4_kms*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mdp_kms*,int) ; 
 struct mdp4_kms* FUNC6 (struct mdp_kms*) ; 
 struct mdp_kms* FUNC7 (struct msm_kms*) ; 

irqreturn_t FUNC8(struct msm_kms *kms)
{
	struct mdp_kms *mdp_kms = FUNC7(kms);
	struct mdp4_kms *mdp4_kms = FUNC6(mdp_kms);
	struct drm_device *dev = mdp4_kms->dev;
	struct msm_drm_private *priv = dev->dev_private;
	unsigned int id;
	uint32_t status, enable;

	enable = FUNC3(mdp4_kms, REG_MDP4_INTR_ENABLE);
	status = FUNC3(mdp4_kms, REG_MDP4_INTR_STATUS) & enable;
	FUNC4(mdp4_kms, REG_MDP4_INTR_CLEAR, status);

	FUNC0("status=%08x", status);

	FUNC5(mdp_kms, status);

	for (id = 0; id < priv->num_crtcs; id++)
		if (status & FUNC2(priv->crtcs[id]))
			FUNC1(dev, id);

	return IRQ_HANDLED;
}