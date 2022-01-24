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
struct video_device {scalar_t__ vfl_type; int /*<<< orphan*/  lock; } ;
struct saa7146_fh {int /*<<< orphan*/  fh; struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_3__* ext; TYPE_2__* ext_vv_data; } ;
struct file {int /*<<< orphan*/ * private_data; } ;
struct TYPE_10__ {int (* open ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_9__ {int (* open ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  module; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* open ) (struct file*) ;} ;
struct TYPE_7__ {int capabilities; TYPE_1__ vbi_fops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 scalar_t__ VFL_TYPE_VBI ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_fh*) ; 
 struct saa7146_fh* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__ saa7146_vbi_uops ; 
 TYPE_4__ saa7146_video_uops ; 
 int FUNC7 (struct saa7146_dev*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int FUNC9 (struct saa7146_dev*,struct file*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct video_device*) ; 
 struct video_device* FUNC13 (struct file*) ; 
 int /*<<< orphan*/  FUNC14 (struct video_device*) ; 
 struct saa7146_dev* FUNC15 (struct file*) ; 

__attribute__((used)) static int FUNC16(struct file *file)
{
	struct video_device *vdev = FUNC13(file);
	struct saa7146_dev *dev = FUNC15(file);
	struct saa7146_fh *fh = NULL;
	int result = 0;

	FUNC1("file:%p, dev:%s\n", file, FUNC14(vdev));

	if (FUNC5(vdev->lock))
		return -ERESTARTSYS;

	FUNC0("using: %p\n", dev);

	/* check if an extension is registered */
	if( NULL == dev->ext ) {
		FUNC2("no extension registered for this device\n");
		result = -ENODEV;
		goto out;
	}

	/* allocate per open data */
	fh = FUNC4(sizeof(*fh),GFP_KERNEL);
	if (NULL == fh) {
		FUNC2("cannot allocate memory for per open data\n");
		result = -ENOMEM;
		goto out;
	}

	FUNC12(&fh->fh, vdev);

	file->private_data = &fh->fh;
	fh->dev = dev;

	if (vdev->vfl_type == VFL_TYPE_VBI) {
		FUNC2("initializing vbi...\n");
		if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
			result = saa7146_vbi_uops.open(dev,file);
		if (dev->ext_vv_data->vbi_fops.open)
			dev->ext_vv_data->vbi_fops.open(file);
	} else {
		FUNC2("initializing video...\n");
		result = saa7146_video_uops.open(dev,file);
	}

	if (0 != result) {
		goto out;
	}

	if( 0 == FUNC10(dev->ext->module)) {
		result = -EINVAL;
		goto out;
	}

	result = 0;
	FUNC11(&fh->fh);
out:
	if (fh && result != 0) {
		FUNC3(fh);
		file->private_data = NULL;
	}
	FUNC6(vdev->lock);
	return result;
}