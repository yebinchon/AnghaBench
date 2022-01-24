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
struct sun4i_tcon {int /*<<< orphan*/  id; TYPE_1__* dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct drm_encoder {scalar_t__ encoder_type; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DRM_SUN8I_TCON_TOP ; 
 scalar_t__ DRM_MODE_ENCODER_TMDS ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (struct device_node*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct sun4i_tcon *tcon,
				     const struct drm_encoder *encoder)
{
	struct device_node *port, *remote;
	struct platform_device *pdev;
	int id, ret;

	/* find TCON TOP platform device and TCON id */

	port = FUNC2(tcon->dev->of_node, 0);
	if (!port)
		return -EINVAL;

	id = FUNC5(port);
	FUNC4(port);

	remote = FUNC3(tcon->dev->of_node, 0, -1);
	if (!remote)
		return -EINVAL;

	pdev = FUNC1(remote);
	FUNC4(remote);
	if (!pdev)
		return -EINVAL;

	if (FUNC0(CONFIG_DRM_SUN8I_TCON_TOP) &&
	    encoder->encoder_type == DRM_MODE_ENCODER_TMDS) {
		ret = FUNC7(&pdev->dev, id);
		if (ret)
			return ret;
	}

	if (FUNC0(CONFIG_DRM_SUN8I_TCON_TOP)) {
		ret = FUNC6(&pdev->dev, tcon->id, id);
		if (ret)
			return ret;
	}

	return 0;
}