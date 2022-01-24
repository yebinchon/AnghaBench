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
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct udl_framebuffer {int active_16; TYPE_2__ base; } ;
struct udl_device {int mode_buf_len; scalar_t__ mode_buf; struct drm_crtc* crtc; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_device {struct udl_device* dev_private; } ;
struct drm_crtc {TYPE_1__* primary; struct drm_device* dev; } ;
struct TYPE_3__ {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_DPMS_ON ; 
 struct udl_framebuffer* FUNC0 (struct drm_framebuffer*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct udl_framebuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int) ; 
 char* FUNC7 (char*,struct drm_display_mode*) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct drm_crtc *crtc,
			       struct drm_display_mode *mode,
			       struct drm_display_mode *adjusted_mode,
			       int x, int y,
			       struct drm_framebuffer *old_fb)

{
	struct drm_device *dev = crtc->dev;
	struct udl_framebuffer *ufb = FUNC0(crtc->primary->fb);
	struct udl_device *udl = dev->dev_private;
	char *buf;
	char *wrptr;
	int color_depth = 0;

	udl->crtc = crtc;

	buf = (char *)udl->mode_buf;

	/* for now we just clip 24 -> 16 - if we fix that fix this */
	/*if  (crtc->fb->bits_per_pixel != 16)
	  color_depth = 1; */

	/* This first section has to do with setting the base address on the
	* controller * associated with the display. There are 2 base
	* pointers, currently, we only * use the 16 bpp segment.
	*/
	wrptr = FUNC8(buf);
	wrptr = FUNC6(wrptr, color_depth);
	/* set base for 16bpp segment to 0 */
	wrptr = FUNC3(wrptr, 0);
	/* set base for 8bpp segment to end of fb */
	wrptr = FUNC4(wrptr, 2 * mode->vdisplay * mode->hdisplay);

	wrptr = FUNC7(wrptr, adjusted_mode);
	wrptr = FUNC5(wrptr, DRM_MODE_DPMS_ON);
	wrptr = FUNC9(wrptr);

	wrptr = FUNC1(wrptr);

	if (old_fb) {
		struct udl_framebuffer *uold_fb = FUNC0(old_fb);
		uold_fb->active_16 = false;
	}
	ufb->active_16 = true;
	udl->mode_buf_len = wrptr - buf;

	/* damage all of it */
	FUNC2(ufb, 0, 0, ufb->base.width, ufb->base.height);
	return 0;
}