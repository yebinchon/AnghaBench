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
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; struct rdma_umap_priv* vm_private_data; TYPE_1__* vm_file; } ;
struct rdma_umap_priv {int dummy; } ;
struct ib_uverbs_file {int /*<<< orphan*/  hw_destroy_rwsem; int /*<<< orphan*/  ucontext; } ;
struct TYPE_2__ {struct ib_uverbs_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rdma_umap_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_umap_priv*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct vm_area_struct *vma)
{
	struct ib_uverbs_file *ufile = vma->vm_file->private_data;
	struct rdma_umap_priv *opriv = vma->vm_private_data;
	struct rdma_umap_priv *priv;

	if (!opriv)
		return;

	/* We are racing with disassociation */
	if (!FUNC0(&ufile->hw_destroy_rwsem))
		goto out_zap;
	/*
	 * Disassociation already completed, the VMA should already be zapped.
	 */
	if (!ufile->ucontext)
		goto out_unlock;

	priv = FUNC1(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		goto out_unlock;
	FUNC2(priv, vma);

	FUNC3(&ufile->hw_destroy_rwsem);
	return;

out_unlock:
	FUNC3(&ufile->hw_destroy_rwsem);
out_zap:
	/*
	 * We can't allow the VMA to be created with the actual IO pages, that
	 * would break our API contract, and it can't be stopped at this
	 * point, so zap it.
	 */
	vma->vm_private_data = NULL;
	FUNC4(vma, vma->vm_start, vma->vm_end - vma->vm_start);
}