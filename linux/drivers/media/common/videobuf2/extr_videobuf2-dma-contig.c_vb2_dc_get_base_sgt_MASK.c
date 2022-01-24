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
struct vb2_dc_buf {int /*<<< orphan*/  dev; int /*<<< orphan*/  attrs; int /*<<< orphan*/  size; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  cookie; } ;
struct sg_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 
 struct sg_table* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sg_table *FUNC4(struct vb2_dc_buf *buf)
{
	int ret;
	struct sg_table *sgt;

	sgt = FUNC3(sizeof(*sgt), GFP_KERNEL);
	if (!sgt) {
		FUNC0(buf->dev, "failed to alloc sg table\n");
		return NULL;
	}

	ret = FUNC1(buf->dev, sgt, buf->cookie, buf->dma_addr,
		buf->size, buf->attrs);
	if (ret < 0) {
		FUNC0(buf->dev, "failed to get scatterlist from DMA API\n");
		FUNC2(sgt);
		return NULL;
	}

	return sgt;
}