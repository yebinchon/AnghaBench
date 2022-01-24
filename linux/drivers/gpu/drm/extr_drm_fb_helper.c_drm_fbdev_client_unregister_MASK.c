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
struct drm_fb_helper {scalar_t__ fbdev; } ;
struct drm_client_dev {int dummy; } ;

/* Variables and functions */
 struct drm_fb_helper* FUNC0 (struct drm_client_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_fb_helper*) ; 

__attribute__((used)) static void FUNC3(struct drm_client_dev *client)
{
	struct drm_fb_helper *fb_helper = FUNC0(client);

	if (fb_helper->fbdev)
		/* drm_fbdev_fb_destroy() takes care of cleanup */
		FUNC1(fb_helper);
	else
		FUNC2(fb_helper);
}