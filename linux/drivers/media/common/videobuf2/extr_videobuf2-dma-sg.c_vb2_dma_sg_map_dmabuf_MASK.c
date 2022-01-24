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
struct vb2_dma_sg_buf {int dma_sgt; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  dma_dir; int /*<<< orphan*/  db_attach; } ;
struct sg_table {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sg_table*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct sg_table* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void *mem_priv)
{
	struct vb2_dma_sg_buf *buf = mem_priv;
	struct sg_table *sgt;

	if (FUNC1(!buf->db_attach)) {
		FUNC3("trying to pin a non attached buffer\n");
		return -EINVAL;
	}

	if (FUNC1(buf->dma_sgt)) {
		FUNC3("dmabuf buffer is already pinned\n");
		return 0;
	}

	/* get the associated scatterlist for this buffer */
	sgt = FUNC2(buf->db_attach, buf->dma_dir);
	if (FUNC0(sgt)) {
		FUNC3("Error getting dmabuf scatterlist\n");
		return -EINVAL;
	}

	buf->dma_sgt = sgt;
	buf->vaddr = NULL;

	return 0;
}