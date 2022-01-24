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
struct file {struct dvb_device* private_data; } ;
struct dvb_device {struct dmxdev* priv; } ;
struct dmxdev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dvr_vb2_ctx; } ;

/* Variables and functions */
#define  DMX_DQBUF 133 
#define  DMX_EXPBUF 132 
#define  DMX_QBUF 131 
#define  DMX_QUERYBUF 130 
#define  DMX_REQBUFS 129 
#define  DMX_SET_BUFFER_SIZE 128 
 int ENOTTY ; 
 int ERESTARTSYS ; 
 int FUNC0 (struct dmxdev*,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct file *file,
			    unsigned int cmd, void *parg)
{
	struct dvb_device *dvbdev = file->private_data;
	struct dmxdev *dmxdev = dvbdev->priv;
	unsigned long arg = (unsigned long)parg;
	int ret;

	if (FUNC8(&dmxdev->mutex))
		return -ERESTARTSYS;

	switch (cmd) {
	case DMX_SET_BUFFER_SIZE:
		ret = FUNC0(dmxdev, arg);
		break;

#ifdef CONFIG_DVB_MMAP
	case DMX_REQBUFS:
		ret = dvb_vb2_reqbufs(&dmxdev->dvr_vb2_ctx, parg);
		break;

	case DMX_QUERYBUF:
		ret = dvb_vb2_querybuf(&dmxdev->dvr_vb2_ctx, parg);
		break;

	case DMX_EXPBUF:
		ret = dvb_vb2_expbuf(&dmxdev->dvr_vb2_ctx, parg);
		break;

	case DMX_QBUF:
		ret = dvb_vb2_qbuf(&dmxdev->dvr_vb2_ctx, parg);
		if (ret == 0 && !dvb_vb2_is_streaming(&dmxdev->dvr_vb2_ctx))
			ret = dvb_vb2_stream_on(&dmxdev->dvr_vb2_ctx);
		break;

	case DMX_DQBUF:
		ret = dvb_vb2_dqbuf(&dmxdev->dvr_vb2_ctx, parg);
		break;
#endif
	default:
		ret = -ENOTTY;
		break;
	}
	FUNC9(&dmxdev->mutex);
	return ret;
}