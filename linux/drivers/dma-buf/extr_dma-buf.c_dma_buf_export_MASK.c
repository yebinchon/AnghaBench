#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct file {int /*<<< orphan*/  f_mode; } ;
struct dma_resv {int dummy; } ;
struct dma_buf_export_info {int /*<<< orphan*/  owner; int /*<<< orphan*/  flags; int /*<<< orphan*/  exp_name; int /*<<< orphan*/  size; TYPE_1__* ops; scalar_t__ priv; struct dma_resv* resv; } ;
struct TYPE_7__ {scalar_t__ active; int /*<<< orphan*/ * poll; } ;
struct TYPE_6__ {scalar_t__ active; int /*<<< orphan*/ * poll; } ;
struct dma_buf {int /*<<< orphan*/  list_node; int /*<<< orphan*/  attachments; int /*<<< orphan*/  lock; struct file* file; struct dma_resv* resv; TYPE_3__ cb_shared; TYPE_2__ cb_excl; int /*<<< orphan*/  poll; int /*<<< orphan*/  owner; int /*<<< orphan*/  exp_name; int /*<<< orphan*/  size; TYPE_1__* ops; scalar_t__ priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct TYPE_5__ {int /*<<< orphan*/  release; int /*<<< orphan*/  unmap_dma_buf; int /*<<< orphan*/  map_dma_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct dma_buf* FUNC0 (int) ; 
 int /*<<< orphan*/  FMODE_LSEEK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 int FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_4__ db_list ; 
 struct file* FUNC5 (struct dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_buf*) ; 
 struct dma_buf* FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

struct dma_buf *FUNC16(const struct dma_buf_export_info *exp_info)
{
	struct dma_buf *dmabuf;
	struct dma_resv *resv = exp_info->resv;
	struct file *file;
	size_t alloc_size = sizeof(struct dma_buf);
	int ret;

	if (!exp_info->resv)
		alloc_size += sizeof(struct dma_resv);
	else
		/* prevent &dma_buf[1] == dma_buf->resv */
		alloc_size += 1;

	if (FUNC4(!exp_info->priv
			  || !exp_info->ops
			  || !exp_info->ops->map_dma_buf
			  || !exp_info->ops->unmap_dma_buf
			  || !exp_info->ops->release)) {
		return FUNC0(-EINVAL);
	}

	if (!FUNC15(exp_info->owner))
		return FUNC0(-ENOENT);

	dmabuf = FUNC9(alloc_size, GFP_KERNEL);
	if (!dmabuf) {
		ret = -ENOMEM;
		goto err_module;
	}

	dmabuf->priv = exp_info->priv;
	dmabuf->ops = exp_info->ops;
	dmabuf->size = exp_info->size;
	dmabuf->exp_name = exp_info->exp_name;
	dmabuf->owner = exp_info->owner;
	FUNC7(&dmabuf->poll);
	dmabuf->cb_excl.poll = dmabuf->cb_shared.poll = &dmabuf->poll;
	dmabuf->cb_excl.active = dmabuf->cb_shared.active = 0;

	if (!resv) {
		resv = (struct dma_resv *)&dmabuf[1];
		FUNC6(resv);
	}
	dmabuf->resv = resv;

	file = FUNC5(dmabuf, exp_info->flags);
	if (FUNC2(file)) {
		ret = FUNC3(file);
		goto err_dmabuf;
	}

	file->f_mode |= FMODE_LSEEK;
	dmabuf->file = file;

	FUNC12(&dmabuf->lock);
	FUNC1(&dmabuf->attachments);

	FUNC13(&db_list.lock);
	FUNC10(&dmabuf->list_node, &db_list.head);
	FUNC14(&db_list.lock);

	return dmabuf;

err_dmabuf:
	FUNC8(dmabuf);
err_module:
	FUNC11(exp_info->owner);
	return FUNC0(ret);
}