#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct videobuf_queue {struct file* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct TYPE_5__ {int width; int height; int sizeimage; size_t field; scalar_t__ bytesperline; int /*<<< orphan*/  pixelformat; } ;
struct saa7146_vv {int /*<<< orphan*/  ov_fb; TYPE_2__ video_fmt; TYPE_1__* standard; } ;
struct saa7146_format {int /*<<< orphan*/  trans; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int /*<<< orphan*/  pci; struct saa7146_vv* vv_data; } ;
struct TYPE_6__ {scalar_t__ baddr; int bsize; int width; scalar_t__ bytesperline; int height; int size; int field; scalar_t__ state; } ;
struct saa7146_buf {int /*<<< orphan*/  activate; TYPE_3__ vb; int /*<<< orphan*/ * pt; TYPE_2__* fmt; } ;
struct file {struct saa7146_fh* private_data; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_4__ {int h_max_out; int v_max_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VIDEOBUF_NEEDS_INIT ; 
 scalar_t__ VIDEOBUF_PREPARED ; 
 int /*<<< orphan*/  buffer_activate ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*,struct saa7146_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,struct videobuf_queue*,struct saa7146_buf*) ; 
 struct saa7146_format* FUNC5 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct saa7146_dev*,struct saa7146_buf*) ; 
 int /*<<< orphan*/ * v4l2_field_names ; 
 int FUNC8 (struct videobuf_queue*,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct videobuf_queue *q,
			  struct videobuf_buffer *vb, enum v4l2_field field)
{
	struct file *file = q->priv_data;
	struct saa7146_fh *fh = file->private_data;
	struct saa7146_dev *dev = fh->dev;
	struct saa7146_vv *vv = dev->vv_data;
	struct saa7146_buf *buf = (struct saa7146_buf *)vb;
	int size,err = 0;

	FUNC0("vbuf:%p\n", vb);

	/* sanity checks */
	if (vv->video_fmt.width  < 48 ||
	    vv->video_fmt.height < 32 ||
	    vv->video_fmt.width  > vv->standard->h_max_out ||
	    vv->video_fmt.height > vv->standard->v_max_out) {
		FUNC1("w (%d) / h (%d) out of bounds\n",
		      vv->video_fmt.width, vv->video_fmt.height);
		return -EINVAL;
	}

	size = vv->video_fmt.sizeimage;
	if (0 != buf->vb.baddr && buf->vb.bsize < size) {
		FUNC1("size mismatch\n");
		return -EINVAL;
	}

	FUNC0("buffer_prepare [size=%dx%d,bytes=%d,fields=%s]\n",
		vv->video_fmt.width, vv->video_fmt.height,
		size, v4l2_field_names[vv->video_fmt.field]);
	if (buf->vb.width  != vv->video_fmt.width  ||
	    buf->vb.bytesperline != vv->video_fmt.bytesperline ||
	    buf->vb.height != vv->video_fmt.height ||
	    buf->vb.size   != size ||
	    buf->vb.field  != field      ||
	    buf->vb.field  != vv->video_fmt.field  ||
	    buf->fmt       != &vv->video_fmt) {
		FUNC4(dev,q,buf);
	}

	if (VIDEOBUF_NEEDS_INIT == buf->vb.state) {
		struct saa7146_format *sfmt;

		buf->vb.bytesperline  = vv->video_fmt.bytesperline;
		buf->vb.width  = vv->video_fmt.width;
		buf->vb.height = vv->video_fmt.height;
		buf->vb.size   = size;
		buf->vb.field  = field;
		buf->fmt       = &vv->video_fmt;
		buf->vb.field  = vv->video_fmt.field;

		sfmt = FUNC5(dev,buf->fmt->pixelformat);

		FUNC3(dev, buf);
		if( 0 != FUNC2(sfmt->trans)) {
			FUNC6(dev->pci, &buf->pt[0]);
			FUNC6(dev->pci, &buf->pt[1]);
			FUNC6(dev->pci, &buf->pt[2]);
		} else {
			FUNC6(dev->pci, &buf->pt[0]);
		}

		err = FUNC8(q,&buf->vb, &vv->ov_fb);
		if (err)
			goto oops;
		err = FUNC7(dev,buf);
		if (err)
			goto oops;
	}
	buf->vb.state = VIDEOBUF_PREPARED;
	buf->activate = buffer_activate;

	return 0;

 oops:
	FUNC1("error out\n");
	FUNC4(dev,q,buf);

	return err;
}