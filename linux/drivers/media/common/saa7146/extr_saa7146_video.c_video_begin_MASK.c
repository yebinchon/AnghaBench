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
struct TYPE_2__ {int /*<<< orphan*/  pixelformat; } ;
struct saa7146_vv {int video_status; struct saa7146_fh* video_fh; struct saa7146_fh* ov_suspend; TYPE_1__ video_fmt; } ;
struct saa7146_format {int flags; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct saa7146_dev*,struct saa7146_fh*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int EBUSY ; 
 int FORMAT_IS_PLANAR ; 
 int /*<<< orphan*/  MASK_27 ; 
 int /*<<< orphan*/  MC2 ; 
 unsigned int RESOURCE_DMA1_HPS ; 
 unsigned int RESOURCE_DMA2_CLP ; 
 unsigned int RESOURCE_DMA3_BRS ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int STATUS_CAPTURE ; 
 int STATUS_OVERLAY ; 
 struct saa7146_format* FUNC5 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct saa7146_fh*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7146_fh*) ; 
 int FUNC8 (struct saa7146_fh*) ; 
 int /*<<< orphan*/  FUNC9 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct saa7146_fh *fh)
{
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;
	struct saa7146_format *fmt = NULL;
	unsigned int resource;
	int ret = 0, err = 0;

	FUNC2("dev:%p, fh:%p\n", dev, fh);

	if ((vv->video_status & STATUS_CAPTURE) != 0) {
		if (vv->video_fh == fh) {
			FUNC3("already capturing\n");
			return 0;
		}
		FUNC3("already capturing in another open\n");
		return -EBUSY;
	}

	if ((vv->video_status & STATUS_OVERLAY) != 0) {
		FUNC3("warning: suspending overlay video for streaming capture\n");
		vv->ov_suspend = vv->video_fh;
		err = FUNC8(vv->video_fh); /* side effect: video_status is now 0, video_fh is NULL */
		if (0 != err) {
			FUNC1("suspending video failed. aborting\n");
			return err;
		}
	}

	fmt = FUNC5(dev, vv->video_fmt.pixelformat);
	/* we need to have a valid format set here */
	FUNC0(NULL == fmt);

	if (0 != (fmt->flags & FORMAT_IS_PLANAR)) {
		resource = RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP|RESOURCE_DMA3_BRS;
	} else {
		resource = RESOURCE_DMA1_HPS;
	}

	ret = FUNC6(fh, resource);
	if (0 == ret) {
		FUNC3("cannot get capture resource %d\n", resource);
		if (vv->ov_suspend != NULL) {
			FUNC7(vv->ov_suspend);
			vv->ov_suspend = NULL;
		}
		return -EBUSY;
	}

	/* clear out beginning of streaming bit (rps register 0)*/
	FUNC9(dev, MC2, MASK_27 );

	/* enable rps0 irqs */
	FUNC4(dev, MASK_27);

	vv->video_fh = fh;
	vv->video_status = STATUS_CAPTURE;

	return 0;
}