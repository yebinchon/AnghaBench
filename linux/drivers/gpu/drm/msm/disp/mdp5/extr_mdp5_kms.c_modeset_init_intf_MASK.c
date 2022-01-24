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
struct msm_drm_private {int /*<<< orphan*/ * dsi; int /*<<< orphan*/  hdmi; int /*<<< orphan*/  edp; } ;
struct mdp5_kms {int /*<<< orphan*/  cfg; struct mdp5_ctl_manager* ctlm; struct drm_device* dev; } ;
struct mdp5_interface {int type; int num; } ;
struct mdp5_ctl_manager {int dummy; } ;
struct mdp5_ctl {int dummy; } ;
struct mdp5_cfg_hw {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
#define  INTF_DSI 130 
#define  INTF_HDMI 129 
#define  INTF_eDP 128 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int FUNC3 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC4 (struct mdp5_kms*,struct mdp5_interface*,struct mdp5_ctl*) ; 
 int FUNC5 (struct mdp5_cfg_hw const*,int) ; 
 struct mdp5_cfg_hw* FUNC6 (int /*<<< orphan*/ ) ; 
 struct mdp5_ctl* FUNC7 (struct mdp5_ctl_manager*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct drm_device*,struct drm_encoder*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct drm_device*,struct drm_encoder*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct drm_device*,struct drm_encoder*) ; 

__attribute__((used)) static int FUNC11(struct mdp5_kms *mdp5_kms,
			     struct mdp5_interface *intf)
{
	struct drm_device *dev = mdp5_kms->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct mdp5_ctl_manager *ctlm = mdp5_kms->ctlm;
	struct mdp5_ctl *ctl;
	struct drm_encoder *encoder;
	int ret = 0;

	switch (intf->type) {
	case INTF_eDP:
		if (!priv->edp)
			break;

		ctl = FUNC7(ctlm, intf->num);
		if (!ctl) {
			ret = -EINVAL;
			break;
		}

		encoder = FUNC4(mdp5_kms, intf, ctl);
		if (FUNC2(encoder)) {
			ret = FUNC3(encoder);
			break;
		}

		ret = FUNC9(priv->edp, dev, encoder);
		break;
	case INTF_HDMI:
		if (!priv->hdmi)
			break;

		ctl = FUNC7(ctlm, intf->num);
		if (!ctl) {
			ret = -EINVAL;
			break;
		}

		encoder = FUNC4(mdp5_kms, intf, ctl);
		if (FUNC2(encoder)) {
			ret = FUNC3(encoder);
			break;
		}

		ret = FUNC10(priv->hdmi, dev, encoder);
		break;
	case INTF_DSI:
	{
		const struct mdp5_cfg_hw *hw_cfg =
					FUNC6(mdp5_kms->cfg);
		int dsi_id = FUNC5(hw_cfg, intf->num);

		if ((dsi_id >= FUNC0(priv->dsi)) || (dsi_id < 0)) {
			FUNC1(dev->dev, "failed to find dsi from intf %d\n",
				intf->num);
			ret = -EINVAL;
			break;
		}

		if (!priv->dsi[dsi_id])
			break;

		ctl = FUNC7(ctlm, intf->num);
		if (!ctl) {
			ret = -EINVAL;
			break;
		}

		encoder = FUNC4(mdp5_kms, intf, ctl);
		if (FUNC2(encoder)) {
			ret = FUNC3(encoder);
			break;
		}

		ret = FUNC8(priv->dsi[dsi_id], dev, encoder);
		break;
	}
	default:
		FUNC1(dev->dev, "unknown intf: %d\n", intf->type);
		ret = -EINVAL;
		break;
	}

	return ret;
}