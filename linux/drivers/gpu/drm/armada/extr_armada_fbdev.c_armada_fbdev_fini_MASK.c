#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_fb_helper {TYPE_2__* fb; } ;
struct drm_device {struct armada_private* dev_private; } ;
struct armada_private {struct drm_fb_helper* fbdev; } ;
struct TYPE_4__ {TYPE_1__* funcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(struct drm_device *dev)
{
	struct armada_private *priv = dev->dev_private;
	struct drm_fb_helper *fbh = priv->fbdev;

	if (fbh) {
		FUNC1(fbh);

		FUNC0(fbh);

		if (fbh->fb)
			fbh->fb->funcs->destroy(fbh->fb);

		priv->fbdev = NULL;
	}
}