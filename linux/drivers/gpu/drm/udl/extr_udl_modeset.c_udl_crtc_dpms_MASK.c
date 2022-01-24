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
struct urb {scalar_t__ transfer_buffer; } ;
struct udl_device {scalar_t__ mode_buf_len; } ;
struct drm_device {struct udl_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 char* FUNC2 (char*) ; 
 struct urb* FUNC3 (struct drm_device*) ; 
 char* FUNC4 (char*,int) ; 
 int FUNC5 (struct drm_device*,struct urb*,int) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *crtc, int mode)
{
	struct drm_device *dev = crtc->dev;
	struct udl_device *udl = dev->dev_private;
	int retval;

	if (mode == DRM_MODE_DPMS_OFF) {
		char *buf;
		struct urb *urb;
		urb = FUNC3(dev);
		if (!urb)
			return;

		buf = (char *)urb->transfer_buffer;
		buf = FUNC6(buf);
		buf = FUNC4(buf, mode);
		buf = FUNC7(buf);

		buf = FUNC2(buf);
		retval = FUNC5(dev, urb, buf - (char *)
					urb->transfer_buffer);
	} else {
		if (udl->mode_buf_len == 0) {
			FUNC0("Trying to enable DPMS with no mode\n");
			return;
		}
		FUNC1(crtc);
	}

}