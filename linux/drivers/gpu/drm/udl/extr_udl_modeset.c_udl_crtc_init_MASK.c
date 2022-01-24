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
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_crtc*,int /*<<< orphan*/ *) ; 
 struct drm_crtc* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udl_crtc_funcs ; 
 int /*<<< orphan*/  udl_helper_funcs ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev)
{
	struct drm_crtc *crtc;

	crtc = FUNC2(sizeof(struct drm_crtc) + sizeof(struct drm_connector *), GFP_KERNEL);
	if (crtc == NULL)
		return -ENOMEM;

	FUNC1(dev, crtc, &udl_crtc_funcs);
	FUNC0(crtc, &udl_helper_funcs);

	return 0;
}