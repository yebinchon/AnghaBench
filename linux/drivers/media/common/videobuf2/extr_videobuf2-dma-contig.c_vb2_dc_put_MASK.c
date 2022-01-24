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
struct vb2_dc_buf {int /*<<< orphan*/  dev; int /*<<< orphan*/  attrs; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  cookie; int /*<<< orphan*/  size; struct vb2_dc_buf* sgt_base; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_dc_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_dc_buf*) ; 

__attribute__((used)) static void FUNC5(void *buf_priv)
{
	struct vb2_dc_buf *buf = buf_priv;

	if (!FUNC3(&buf->refcount))
		return;

	if (buf->sgt_base) {
		FUNC4(buf->sgt_base);
		FUNC1(buf->sgt_base);
	}
	FUNC0(buf->dev, buf->size, buf->cookie, buf->dma_addr,
		       buf->attrs);
	FUNC2(buf->dev);
	FUNC1(buf);
}