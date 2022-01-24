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
struct vb2_queue {int memory; scalar_t__ is_output; scalar_t__ error; } ;
struct vb2_buffer {int state; int prepared; int synced; unsigned int num_planes; TYPE_1__* planes; struct vb2_queue* vb2_queue; } ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_2__ {int /*<<< orphan*/  mem_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int VB2_BUF_STATE_PREPARING ; 
#define  VB2_MEMORY_DMABUF 130 
#define  VB2_MEMORY_MMAP 129 
#define  VB2_MEMORY_USERPTR 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct vb2_buffer*) ; 
 int FUNC3 (struct vb2_buffer*) ; 
 int FUNC4 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  buf_out_validate ; 
 int FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ,struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  prepare ; 

__attribute__((used)) static int FUNC8(struct vb2_buffer *vb)
{
	struct vb2_queue *q = vb->vb2_queue;
	enum vb2_buffer_state orig_state = vb->state;
	unsigned int plane;
	int ret;

	if (q->error) {
		FUNC7(1, "fatal error occurred on queue\n");
		return -EIO;
	}

	if (vb->prepared)
		return 0;
	FUNC1(vb->synced);

	if (q->is_output) {
		ret = FUNC5(vb, buf_out_validate, vb);
		if (ret) {
			FUNC7(1, "buffer validation failed\n");
			return ret;
		}
	}

	vb->state = VB2_BUF_STATE_PREPARING;

	switch (q->memory) {
	case VB2_MEMORY_MMAP:
		ret = FUNC3(vb);
		break;
	case VB2_MEMORY_USERPTR:
		ret = FUNC4(vb);
		break;
	case VB2_MEMORY_DMABUF:
		ret = FUNC2(vb);
		break;
	default:
		FUNC0(1, "Invalid queue type\n");
		ret = -EINVAL;
		break;
	}

	if (ret) {
		FUNC7(1, "buffer preparation failed: %d\n", ret);
		vb->state = orig_state;
		return ret;
	}

	/* sync buffers */
	for (plane = 0; plane < vb->num_planes; ++plane)
		FUNC6(vb, prepare, vb->planes[plane].mem_priv);

	vb->synced = 1;
	vb->prepared = 1;
	vb->state = orig_state;

	return 0;
}