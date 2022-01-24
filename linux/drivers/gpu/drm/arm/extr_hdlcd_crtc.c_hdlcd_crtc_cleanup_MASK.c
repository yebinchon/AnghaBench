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
struct hdlcd_drm_private {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDLCD_REG_COMMAND ; 
 struct hdlcd_drm_private* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdlcd_drm_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct hdlcd_drm_private *hdlcd = FUNC0(crtc);

	/* stop the controller on cleanup */
	FUNC2(hdlcd, HDLCD_REG_COMMAND, 0);
	FUNC1(crtc);
}