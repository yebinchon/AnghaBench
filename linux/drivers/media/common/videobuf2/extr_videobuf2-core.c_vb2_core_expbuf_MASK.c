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
struct vb2_queue {scalar_t__ memory; unsigned int type; unsigned int num_buffers; struct vb2_buffer** bufs; TYPE_1__* mem_ops; } ;
struct vb2_plane {int /*<<< orphan*/  mem_priv; } ;
struct vb2_buffer {unsigned int num_planes; struct vb2_plane* planes; } ;
struct dma_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  get_dmabuf; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dma_buf*) ; 
 unsigned int O_ACCMODE ; 
 unsigned int O_CLOEXEC ; 
 scalar_t__ VB2_MEMORY_MMAP ; 
 struct dma_buf* FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct dma_buf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  get_dmabuf ; 
 scalar_t__ FUNC5 (struct vb2_queue*) ; 

int FUNC6(struct vb2_queue *q, int *fd, unsigned int type,
		unsigned int index, unsigned int plane, unsigned int flags)
{
	struct vb2_buffer *vb = NULL;
	struct vb2_plane *vb_plane;
	int ret;
	struct dma_buf *dbuf;

	if (q->memory != VB2_MEMORY_MMAP) {
		FUNC4(1, "queue is not currently set up for mmap\n");
		return -EINVAL;
	}

	if (!q->mem_ops->get_dmabuf) {
		FUNC4(1, "queue does not support DMA buffer exporting\n");
		return -EINVAL;
	}

	if (flags & ~(O_CLOEXEC | O_ACCMODE)) {
		FUNC4(1, "queue does support only O_CLOEXEC and access mode flags\n");
		return -EINVAL;
	}

	if (type != q->type) {
		FUNC4(1, "invalid buffer type\n");
		return -EINVAL;
	}

	if (index >= q->num_buffers) {
		FUNC4(1, "buffer index out of range\n");
		return -EINVAL;
	}

	vb = q->bufs[index];

	if (plane >= vb->num_planes) {
		FUNC4(1, "buffer plane out of range\n");
		return -EINVAL;
	}

	if (FUNC5(q)) {
		FUNC4(1, "expbuf: file io in progress\n");
		return -EBUSY;
	}

	vb_plane = &vb->planes[plane];

	dbuf = FUNC1(vb, get_dmabuf, vb_plane->mem_priv,
				flags & O_ACCMODE);
	if (FUNC0(dbuf)) {
		FUNC4(1, "failed to export buffer %d, plane %d\n",
			index, plane);
		return -EINVAL;
	}

	ret = FUNC2(dbuf, flags & ~O_ACCMODE);
	if (ret < 0) {
		FUNC4(3, "buffer %d, plane %d failed to export (%d)\n",
			index, plane, ret);
		FUNC3(dbuf);
		return ret;
	}

	FUNC4(3, "buffer %d, plane %d exported as %d descriptor\n",
		index, plane, ret);
	*fd = ret;

	return 0;
}