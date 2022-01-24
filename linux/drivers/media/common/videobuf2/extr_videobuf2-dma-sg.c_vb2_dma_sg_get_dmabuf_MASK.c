#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vb2_dma_sg_buf {int /*<<< orphan*/  refcount; int /*<<< orphan*/  dma_sgt; int /*<<< orphan*/  size; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {unsigned long flags; struct vb2_dma_sg_buf* priv; int /*<<< orphan*/  size; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (struct dma_buf*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct dma_buf* FUNC3 (TYPE_1__*) ; 
 TYPE_1__ exp_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vb2_dma_sg_dmabuf_ops ; 

__attribute__((used)) static struct dma_buf *FUNC5(void *buf_priv, unsigned long flags)
{
	struct vb2_dma_sg_buf *buf = buf_priv;
	struct dma_buf *dbuf;
	FUNC0(exp_info);

	exp_info.ops = &vb2_dma_sg_dmabuf_ops;
	exp_info.size = buf->size;
	exp_info.flags = flags;
	exp_info.priv = buf;

	if (FUNC2(!buf->dma_sgt))
		return NULL;

	dbuf = FUNC3(&exp_info);
	if (FUNC1(dbuf))
		return NULL;

	/* dmabuf keeps reference to vb2 buffer */
	FUNC4(&buf->refcount);

	return dbuf;
}