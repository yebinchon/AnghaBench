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
struct TYPE_2__ {int /*<<< orphan*/ * port; } ;
struct hdlcd_drm_private {TYPE_1__ crtc; } ;
struct drm_device {struct hdlcd_drm_private* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct drm_device*) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 scalar_t__ FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 

__attribute__((used)) static void FUNC16(struct device *dev)
{
	struct drm_device *drm = FUNC1(dev);
	struct hdlcd_drm_private *hdlcd = drm->dev_private;

	FUNC6(drm);
	FUNC8(drm);
	FUNC0(dev, drm);
	FUNC10(hdlcd->crtc.port);
	hdlcd->crtc.port = NULL;
	FUNC14(dev);
	FUNC4(&hdlcd->crtc);
	FUNC7(drm);
	FUNC3(drm);
	FUNC15(dev);
	if (FUNC13(dev))
		FUNC12(dev);
	FUNC11(dev);
	FUNC9(drm);
	drm->dev_private = NULL;
	FUNC2(dev, NULL);
	FUNC5(drm);
}