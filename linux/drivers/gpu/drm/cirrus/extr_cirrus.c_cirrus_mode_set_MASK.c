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
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int htotal; int hsync_end; int hsync_start; int hdisplay; int vtotal; int vdisplay; } ;
struct cirrus_device {int cpp; int pitch; } ;

/* Variables and functions */
 int CL_CRT1A ; 
 int VGA_CRTC_H_DISP ; 
 int VGA_CRTC_H_SYNC_END ; 
 int VGA_CRTC_H_SYNC_START ; 
 int VGA_CRTC_H_TOTAL ; 
 int VGA_CRTC_MAX_SCAN ; 
 int VGA_CRTC_MODE ; 
 int VGA_CRTC_OFFSET ; 
 int VGA_CRTC_OVERFLOW ; 
 int VGA_CRTC_V_DISP_END ; 
 int VGA_CRTC_V_SYNC_END ; 
 int VGA_CRTC_V_TOTAL ; 
 int /*<<< orphan*/  VGA_GFX_MISC ; 
 int /*<<< orphan*/  VGA_GFX_MODE ; 
 int FUNC0 (struct drm_framebuffer*) ; 
 int FUNC1 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cirrus_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct cirrus_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cirrus_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cirrus_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cirrus_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cirrus_device*,int,int) ; 

__attribute__((used)) static int FUNC9(struct cirrus_device *cirrus,
			   struct drm_display_mode *mode,
			   struct drm_framebuffer *fb)
{
	int hsyncstart, hsyncend, htotal, hdispend;
	int vtotal, vdispend;
	int tmp;
	int sr07 = 0, hdr = 0;

	htotal = mode->htotal / 8;
	hsyncend = mode->hsync_end / 8;
	hsyncstart = mode->hsync_start / 8;
	hdispend = mode->hdisplay / 8;

	vtotal = mode->vtotal;
	vdispend = mode->vdisplay;

	vdispend -= 1;
	vtotal -= 2;

	htotal -= 5;
	hdispend -= 1;
	hsyncstart += 1;
	hsyncend += 1;

	FUNC5(cirrus, VGA_CRTC_V_SYNC_END, 0x20);
	FUNC5(cirrus, VGA_CRTC_H_TOTAL, htotal);
	FUNC5(cirrus, VGA_CRTC_H_DISP, hdispend);
	FUNC5(cirrus, VGA_CRTC_H_SYNC_START, hsyncstart);
	FUNC5(cirrus, VGA_CRTC_H_SYNC_END, hsyncend);
	FUNC5(cirrus, VGA_CRTC_V_TOTAL, vtotal & 0xff);
	FUNC5(cirrus, VGA_CRTC_V_DISP_END, vdispend & 0xff);

	tmp = 0x40;
	if ((vdispend + 1) & 512)
		tmp |= 0x20;
	FUNC5(cirrus, VGA_CRTC_MAX_SCAN, tmp);

	/*
	 * Overflow bits for values that don't fit in the standard registers
	 */
	tmp = 0x10;
	if (vtotal & 0x100)
		tmp |= 0x01;
	if (vdispend & 0x100)
		tmp |= 0x02;
	if ((vdispend + 1) & 0x100)
		tmp |= 0x08;
	if (vtotal & 0x200)
		tmp |= 0x20;
	if (vdispend & 0x200)
		tmp |= 0x40;
	FUNC5(cirrus, VGA_CRTC_OVERFLOW, tmp);

	tmp = 0;

	/* More overflow bits */

	if ((htotal + 5) & 0x40)
		tmp |= 0x10;
	if ((htotal + 5) & 0x80)
		tmp |= 0x20;
	if (vtotal & 0x100)
		tmp |= 0x40;
	if (vtotal & 0x200)
		tmp |= 0x80;

	FUNC5(cirrus, CL_CRT1A, tmp);

	/* Disable Hercules/CGA compatibility */
	FUNC5(cirrus, VGA_CRTC_MODE, 0x03);

	sr07 = FUNC4(cirrus, 0x07);
	sr07 &= 0xe0;
	hdr = 0;

	cirrus->cpp = FUNC0(fb);
	switch (cirrus->cpp * 8) {
	case 8:
		sr07 |= 0x11;
		break;
	case 16:
		sr07 |= 0x17;
		hdr = 0xc1;
		break;
	case 24:
		sr07 |= 0x15;
		hdr = 0xc5;
		break;
	case 32:
		sr07 |= 0x19;
		hdr = 0xc5;
		break;
	default:
		return -1;
	}

	FUNC8(cirrus, 0x7, sr07);

	/* Program the pitch */
	cirrus->pitch = FUNC1(fb);
	tmp = cirrus->pitch / 8;
	FUNC5(cirrus, VGA_CRTC_OFFSET, tmp);

	/* Enable extended blanking and pitch bits, and enable full memory */
	tmp = 0x22;
	tmp |= (cirrus->pitch >> 7) & 0x10;
	tmp |= (cirrus->pitch >> 6) & 0x40;
	FUNC5(cirrus, 0x1b, tmp);

	/* Enable high-colour modes */
	FUNC6(cirrus, VGA_GFX_MODE, 0x40);

	/* And set graphics mode */
	FUNC6(cirrus, VGA_GFX_MISC, 0x01);

	FUNC7(cirrus, hdr);

	FUNC2(cirrus, 0);

	/* Unblank (needed on S3 resume, vgabios doesn't do it then) */
	FUNC3(0x20, 0x3c0);
	return 0;
}