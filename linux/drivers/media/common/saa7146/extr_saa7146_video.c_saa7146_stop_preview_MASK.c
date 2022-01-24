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
struct saa7146_vv {int video_status; struct saa7146_fh* video_fh; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct saa7146_dev*,struct saa7146_fh*) ; 
 int EBUSY ; 
 scalar_t__ FUNC2 (struct saa7146_fh*) ; 
 int RESOURCE_DMA1_HPS ; 
 int RESOURCE_DMA2_CLP ; 
 int STATUS_OVERLAY ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_fh*) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_fh*,int) ; 

int FUNC5(struct saa7146_fh *fh)
{
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;

	FUNC1("dev:%p, fh:%p\n", dev, fh);

	/* check if streaming capture is running */
	if (FUNC2(fh) != 0) {
		FUNC0("streaming capture is active\n");
		return -EBUSY;
	}

	/* check if overlay is running at all */
	if ((vv->video_status & STATUS_OVERLAY) == 0) {
		FUNC0("no active overlay\n");
		return 0;
	}

	if (vv->video_fh != fh) {
		FUNC0("overlay is active, but in another open\n");
		return -EBUSY;
	}

	vv->video_status = 0;
	vv->video_fh = NULL;

	FUNC3(fh);

	FUNC4(fh, RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP);

	return 0;
}