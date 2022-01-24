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
struct video_device {int device_caps; int /*<<< orphan*/  name; int /*<<< orphan*/  tvnorms; int /*<<< orphan*/ * v4l2_dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  release; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; } ;
struct saa7146_dev {int /*<<< orphan*/  name; TYPE_2__* ext_vv_data; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  v4l2_lock; } ;
struct TYPE_4__ {int num_stds; int capabilities; TYPE_1__* stds; int /*<<< orphan*/  vbi_ops; int /*<<< orphan*/  vid_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct saa7146_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int V4L2_CAP_AUDIO ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_SLICED_VBI_OUTPUT ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VBI_CAPTURE ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int V4L2_CAP_VIDEO_OVERLAY ; 
 int VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct video_device*) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int /*<<< orphan*/  video_fops ; 
 int FUNC5 (struct video_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct video_device*,struct saa7146_dev*) ; 

int FUNC7(struct video_device *vfd, struct saa7146_dev *dev,
			    char *name, int type)
{
	int err;
	int i;

	FUNC0("dev:%p, name:'%s', type:%d\n", dev, name, type);

	vfd->fops = &video_fops;
	if (type == VFL_TYPE_GRABBER)
		vfd->ioctl_ops = &dev->ext_vv_data->vid_ops;
	else
		vfd->ioctl_ops = &dev->ext_vv_data->vbi_ops;
	vfd->release = video_device_release_empty;
	vfd->lock = &dev->v4l2_lock;
	vfd->v4l2_dev = &dev->v4l2_dev;
	vfd->tvnorms = 0;
	for (i = 0; i < dev->ext_vv_data->num_stds; i++)
		vfd->tvnorms |= dev->ext_vv_data->stds[i].id;
	FUNC3(vfd->name, name, sizeof(vfd->name));
	vfd->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OVERLAY |
			   V4L2_CAP_READWRITE | V4L2_CAP_STREAMING;
	vfd->device_caps |= dev->ext_vv_data->capabilities;
	if (type == VFL_TYPE_GRABBER)
		vfd->device_caps &=
			~(V4L2_CAP_VBI_CAPTURE | V4L2_CAP_SLICED_VBI_OUTPUT);
	else
		vfd->device_caps &=
			~(V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OVERLAY | V4L2_CAP_AUDIO);
	FUNC6(vfd, dev);

	err = FUNC5(vfd, type, -1);
	if (err < 0) {
		FUNC1("cannot register v4l2 device. skipping.\n");
		return err;
	}

	FUNC2("%s: registered device %s [v4l2]\n",
		dev->name, FUNC4(vfd));
	return 0;
}