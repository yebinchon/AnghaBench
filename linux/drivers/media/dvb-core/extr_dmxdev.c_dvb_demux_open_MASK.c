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
struct inode {int dummy; } ;
struct file {int f_flags; struct dvb_device* private_data; } ;
struct dvb_device {scalar_t__ state; int /*<<< orphan*/  users; int /*<<< orphan*/  timer; int /*<<< orphan*/  type; int /*<<< orphan*/  vb2_ctx; int /*<<< orphan*/  buffer; int /*<<< orphan*/  mutex; struct dmxdev* priv; } ;
struct dmxdev_filter {scalar_t__ state; int /*<<< orphan*/  users; int /*<<< orphan*/  timer; int /*<<< orphan*/  type; int /*<<< orphan*/  vb2_ctx; int /*<<< orphan*/  buffer; int /*<<< orphan*/  mutex; struct dmxdev* priv; } ;
struct dmxdev {int filternum; int may_do_mmap; int /*<<< orphan*/  mutex; struct dvb_device* filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMXDEV_STATE_ALLOCATED ; 
 scalar_t__ DMXDEV_STATE_FREE ; 
 int /*<<< orphan*/  DMXDEV_TYPE_NONE ; 
 int EINVAL ; 
 int EMFILE ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dvb_dmxdev_filter_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct dvb_device *dvbdev = file->private_data;
	struct dmxdev *dmxdev = dvbdev->priv;
	int i;
	struct dmxdev_filter *dmxdevfilter;

	if (!dmxdev->filter)
		return -EINVAL;

	if (FUNC4(&dmxdev->mutex))
		return -ERESTARTSYS;

	for (i = 0; i < dmxdev->filternum; i++)
		if (dmxdev->filter[i].state == DMXDEV_STATE_FREE)
			break;

	if (i == dmxdev->filternum) {
		FUNC5(&dmxdev->mutex);
		return -EMFILE;
	}

	dmxdevfilter = &dmxdev->filter[i];
	FUNC3(&dmxdevfilter->mutex);
	file->private_data = dmxdevfilter;

#ifdef CONFIG_DVB_MMAP
	dmxdev->may_do_mmap = 1;
#else
	dmxdev->may_do_mmap = 0;
#endif

	FUNC1(&dmxdevfilter->buffer, NULL, 8192);
	FUNC2(&dmxdevfilter->vb2_ctx, "demux_filter",
		     file->f_flags & O_NONBLOCK);
	dmxdevfilter->type = DMXDEV_TYPE_NONE;
	FUNC0(dmxdevfilter, DMXDEV_STATE_ALLOCATED);
	FUNC6(&dmxdevfilter->timer, dvb_dmxdev_filter_timeout, 0);

	dvbdev->users++;

	FUNC5(&dmxdev->mutex);
	return 0;
}