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
struct TYPE_2__ {int bytesperline; int width; int /*<<< orphan*/  pixelformat; } ;
struct v4l2_framebuffer {TYPE_1__ fmt; } ;
struct saa7146_vv {void* video_fh; struct v4l2_framebuffer ov_fb; struct saa7146_format* ov_fmt; } ;
struct saa7146_format {int flags; int depth; int /*<<< orphan*/  pixelformat; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 int FORMAT_IS_PLANAR ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct saa7146_format* FUNC5 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *fh, const struct v4l2_framebuffer *fb)
{
	struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
	struct saa7146_vv *vv = dev->vv_data;
	struct saa7146_format *fmt;

	FUNC1("VIDIOC_S_FBUF\n");

	if (!FUNC4(CAP_SYS_ADMIN) && !FUNC4(CAP_SYS_RAWIO))
		return -EPERM;

	/* check args */
	fmt = FUNC5(dev, fb->fmt.pixelformat);
	if (NULL == fmt)
		return -EINVAL;

	/* planar formats are not allowed for overlay video, clipping and video dma would clash */
	if (fmt->flags & FORMAT_IS_PLANAR)
		FUNC2("planar pixelformat '%4.4s' not allowed for overlay\n",
		      (char *)&fmt->pixelformat);

	/* check if overlay is running */
	if (FUNC3(fh) != 0) {
		if (vv->video_fh != fh) {
			FUNC0("refusing to change framebuffer information while overlay is active in another open\n");
			return -EBUSY;
		}
	}

	/* ok, accept it */
	vv->ov_fb = *fb;
	vv->ov_fmt = fmt;

	if (vv->ov_fb.fmt.bytesperline < vv->ov_fb.fmt.width) {
		vv->ov_fb.fmt.bytesperline = vv->ov_fb.fmt.width * fmt->depth / 8;
		FUNC0("setting bytesperline to %d\n", vv->ov_fb.fmt.bytesperline);
	}
	return 0;
}