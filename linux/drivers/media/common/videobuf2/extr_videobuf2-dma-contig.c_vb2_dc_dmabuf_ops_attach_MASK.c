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
struct vb2_dc_buf {TYPE_1__* sgt_base; } ;
struct sg_table {unsigned int orig_nents; struct scatterlist* sgl; } ;
struct vb2_dc_attachment {int /*<<< orphan*/  dma_dir; struct sg_table sgt; } ;
struct scatterlist {int /*<<< orphan*/  offset; int /*<<< orphan*/  length; } ;
struct dma_buf_attachment {struct vb2_dc_attachment* priv; } ;
struct dma_buf {struct vb2_dc_buf* priv; } ;
struct TYPE_2__ {struct scatterlist* sgl; int /*<<< orphan*/  orig_nents; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct vb2_dc_attachment*) ; 
 struct vb2_dc_attachment* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dma_buf *dbuf,
	struct dma_buf_attachment *dbuf_attach)
{
	struct vb2_dc_attachment *attach;
	unsigned int i;
	struct scatterlist *rd, *wr;
	struct sg_table *sgt;
	struct vb2_dc_buf *buf = dbuf->priv;
	int ret;

	attach = FUNC1(sizeof(*attach), GFP_KERNEL);
	if (!attach)
		return -ENOMEM;

	sgt = &attach->sgt;
	/* Copy the buf->base_sgt scatter list to the attachment, as we can't
	 * map the same scatter list to multiple attachments at the same time.
	 */
	ret = FUNC2(sgt, buf->sgt_base->orig_nents, GFP_KERNEL);
	if (ret) {
		FUNC0(attach);
		return -ENOMEM;
	}

	rd = buf->sgt_base->sgl;
	wr = sgt->sgl;
	for (i = 0; i < sgt->orig_nents; ++i) {
		FUNC5(wr, FUNC4(rd), rd->length, rd->offset);
		rd = FUNC3(rd);
		wr = FUNC3(wr);
	}

	attach->dma_dir = DMA_NONE;
	dbuf_attach->priv = attach;

	return 0;
}