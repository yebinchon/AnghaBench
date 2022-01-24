#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_9__ {size_t field; TYPE_2__ w; } ;
struct TYPE_6__ {TYPE_4__ win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_10__ {TYPE_4__ win; int /*<<< orphan*/ * fh; } ;
struct saa7146_vv {struct saa7146_fh* video_fh; int /*<<< orphan*/  video_status; TYPE_5__ ov; TYPE_3__* ov_fmt; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct saa7146_dev*,struct saa7146_fh*) ; 
 int EAGAIN ; 
 int EBUSY ; 
 scalar_t__ FUNC2 (struct saa7146_fh*) ; 
 scalar_t__ FUNC3 (struct saa7146_fh*) ; 
 int RESOURCE_DMA1_HPS ; 
 int RESOURCE_DMA2_CLP ; 
 int /*<<< orphan*/  STATUS_OVERLAY ; 
 int FUNC4 (struct saa7146_fh*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7146_fh*,int) ; 
 scalar_t__ FUNC6 (struct saa7146_fh*,int) ; 
 int /*<<< orphan*/ * v4l2_field_names ; 
 int FUNC7 (int /*<<< orphan*/ *,struct saa7146_fh*,struct v4l2_format*) ; 

int FUNC8(struct saa7146_fh *fh)
{
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;
	struct v4l2_format fmt;
	int ret = 0, err = 0;

	FUNC1("dev:%p, fh:%p\n", dev, fh);

	/* check if we have overlay information */
	if (vv->ov.fh == NULL) {
		FUNC0("no overlay data available. try S_FMT first.\n");
		return -EAGAIN;
	}

	/* check if streaming capture is running */
	if (FUNC2(fh) != 0) {
		FUNC0("streaming capture is active\n");
		return -EBUSY;
	}

	/* check if overlay is running */
	if (FUNC3(fh) != 0) {
		if (vv->video_fh == fh) {
			FUNC0("overlay is already active\n");
			return 0;
		}
		FUNC0("overlay is already active in another open\n");
		return -EBUSY;
	}

	if (0 == FUNC6(fh, RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP)) {
		FUNC0("cannot get necessary overlay resources\n");
		return -EBUSY;
	}

	fmt.fmt.win = vv->ov.win;
	err = FUNC7(NULL, fh, &fmt);
	if (0 != err) {
		FUNC5(vv->video_fh, RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP);
		return -EBUSY;
	}
	vv->ov.win = fmt.fmt.win;

	FUNC0("%dx%d+%d+%d 0x%08x field=%s\n",
	      vv->ov.win.w.width, vv->ov.win.w.height,
	      vv->ov.win.w.left, vv->ov.win.w.top,
	      vv->ov_fmt->pixelformat, v4l2_field_names[vv->ov.win.field]);

	if (0 != (ret = FUNC4(fh))) {
		FUNC0("enabling overlay failed: %d\n", ret);
		FUNC5(vv->video_fh, RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP);
		return ret;
	}

	vv->video_status = STATUS_OVERLAY;
	vv->video_fh = fh;

	return 0;
}