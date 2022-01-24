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
struct udl_device {int /*<<< orphan*/  mode_buf_len; int /*<<< orphan*/  mode_buf; } ;
struct drm_device {struct udl_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct urb* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct udl_device *udl = dev->dev_private;
	struct urb *urb;
	char *buf;
	int retval;

	urb = FUNC2(dev);
	if (!urb)
		return -ENOMEM;

	buf = (char *)urb->transfer_buffer;

	FUNC1(buf, udl->mode_buf, udl->mode_buf_len);
	retval = FUNC3(dev, urb, udl->mode_buf_len);
	FUNC0("write mode info %d\n", udl->mode_buf_len);
	return retval;
}