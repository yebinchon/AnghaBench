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
struct vmw_screen_object_unit {scalar_t__ defined; } ;
struct vmw_private {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct vmw_screen_object_unit* FUNC1 (struct drm_crtc*) ; 
 struct vmw_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vmw_private*,struct vmw_screen_object_unit*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc,
					struct drm_crtc_state *old_state)
{
	struct vmw_private *dev_priv;
	struct vmw_screen_object_unit *sou;
	int ret;


	if (!crtc) {
		FUNC0("CRTC is NULL\n");
		return;
	}

	sou = FUNC1(crtc);
	dev_priv = FUNC2(crtc->dev);

	if (sou->defined) {
		ret = FUNC3(dev_priv, sou);
		if (ret)
			FUNC0("Failed to destroy Screen Object\n");
	}
}