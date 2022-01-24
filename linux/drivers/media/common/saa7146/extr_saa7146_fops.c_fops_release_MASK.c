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
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* release ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  (* release ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  module; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* release ) (struct file*) ;} ;
struct TYPE_7__ {int capabilities; TYPE_1__ vbi_fops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct file*) ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 scalar_t__ VFL_TYPE_VBI ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__ saa7146_vbi_uops ; 
 TYPE_4__ saa7146_video_uops ; 
 int /*<<< orphan*/  FUNC5 (struct saa7146_dev*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7146_dev*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct video_device* FUNC10 (struct file*) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct video_device *vdev = FUNC10(file);
	struct saa7146_fh  *fh  = file->private_data;
	struct saa7146_dev *dev = fh->dev;

	FUNC0("file:%p\n", file);

	FUNC3(vdev->lock);

	if (vdev->vfl_type == VFL_TYPE_VBI) {
		if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
			saa7146_vbi_uops.release(dev,file);
		if (dev->ext_vv_data->vbi_fops.release)
			dev->ext_vv_data->vbi_fops.release(file);
	} else {
		saa7146_video_uops.release(dev,file);
	}

	FUNC8(&fh->fh);
	FUNC9(&fh->fh);
	FUNC2(dev->ext->module);
	file->private_data = NULL;
	FUNC1(fh);

	FUNC4(vdev->lock);

	return 0;
}