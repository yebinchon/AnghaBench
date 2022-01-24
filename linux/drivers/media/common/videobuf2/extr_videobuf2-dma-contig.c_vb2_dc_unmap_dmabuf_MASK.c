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
struct vb2_dc_buf {struct sg_table* dma_sgt; scalar_t__ dma_addr; int /*<<< orphan*/  dma_dir; TYPE_1__* db_attach; int /*<<< orphan*/ * vaddr; } ;
struct sg_table {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sg_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void *mem_priv)
{
	struct vb2_dc_buf *buf = mem_priv;
	struct sg_table *sgt = buf->dma_sgt;

	if (FUNC0(!buf->db_attach)) {
		FUNC3("trying to unpin a not attached buffer\n");
		return;
	}

	if (FUNC0(!sgt)) {
		FUNC3("dmabuf buffer is already unpinned\n");
		return;
	}

	if (buf->vaddr) {
		FUNC2(buf->db_attach->dmabuf, buf->vaddr);
		buf->vaddr = NULL;
	}
	FUNC1(buf->db_attach, sgt, buf->dma_dir);

	buf->dma_addr = 0;
	buf->dma_sgt = NULL;
}