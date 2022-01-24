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
struct hdlcd_drm_private {int /*<<< orphan*/  clk; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDLCD_REG_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hdlcd_drm_private* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdlcd_drm_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc,
				      struct drm_crtc_state *old_state)
{
	struct hdlcd_drm_private *hdlcd = FUNC1(crtc);

	FUNC2(crtc);
	FUNC3(hdlcd, HDLCD_REG_COMMAND, 0);
	FUNC0(hdlcd->clk);
}