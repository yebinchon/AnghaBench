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
struct drm_encoder {int dummy; } ;
struct dw_dsi {struct drm_bridge* bridge; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_encoder*,struct drm_bridge*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev, struct dw_dsi *dsi)
{
	struct drm_encoder *encoder = &dsi->encoder;
	struct drm_bridge *bridge = dsi->bridge;
	int ret;

	/* associate the bridge to dsi encoder */
	ret = FUNC1(encoder, bridge, NULL);
	if (ret) {
		FUNC0("failed to attach external bridge\n");
		return ret;
	}

	return 0;
}