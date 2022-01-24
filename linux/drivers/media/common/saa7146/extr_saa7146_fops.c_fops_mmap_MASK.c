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
struct vm_area_struct {int dummy; } ;
struct videobuf_queue {int dummy; } ;
struct video_device {int vfl_type; int /*<<< orphan*/  lock; } ;
struct saa7146_fh {struct videobuf_queue vbi_q; TYPE_2__* dev; struct videobuf_queue video_q; } ;
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_4__ {TYPE_1__* ext_vv_data; } ;
struct TYPE_3__ {int capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,struct file*,struct vm_area_struct*) ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int V4L2_CAP_SLICED_VBI_OUTPUT ; 
#define  VFL_TYPE_GRABBER 129 
#define  VFL_TYPE_VBI 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct video_device* FUNC4 (struct file*) ; 
 int FUNC5 (struct videobuf_queue*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC6(struct file *file, struct vm_area_struct * vma)
{
	struct video_device *vdev = FUNC4(file);
	struct saa7146_fh *fh = file->private_data;
	struct videobuf_queue *q;
	int res;

	switch (vdev->vfl_type) {
	case VFL_TYPE_GRABBER: {
		FUNC1("V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\n",
		       file, vma);
		q = &fh->video_q;
		break;
		}
	case VFL_TYPE_VBI: {
		FUNC1("V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\n",
		       file, vma);
		if (fh->dev->ext_vv_data->capabilities & V4L2_CAP_SLICED_VBI_OUTPUT)
			return -ENODEV;
		q = &fh->vbi_q;
		break;
		}
	default:
		FUNC0();
	}

	if (FUNC2(vdev->lock))
		return -ERESTARTSYS;
	res = FUNC5(q, vma);
	FUNC3(vdev->lock);
	return res;
}