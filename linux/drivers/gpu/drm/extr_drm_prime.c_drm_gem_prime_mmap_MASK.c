#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  vm_pgoff; } ;
struct file {struct file* private_data; int /*<<< orphan*/  minor; } ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; TYPE_3__* dev; } ;
struct drm_file {struct drm_file* private_data; int /*<<< orphan*/  minor; } ;
struct TYPE_6__ {TYPE_2__* driver; int /*<<< orphan*/  primary; } ;
struct TYPE_5__ {TYPE_1__* fops; } ;
struct TYPE_4__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct file*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct file* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct file*,struct vm_area_struct*) ; 

int FUNC6(struct drm_gem_object *obj, struct vm_area_struct *vma)
{
	struct drm_file *priv;
	struct file *fil;
	int ret;

	priv = FUNC4(sizeof(*priv), GFP_KERNEL);
	fil = FUNC4(sizeof(*fil), GFP_KERNEL);
	if (!priv || !fil) {
		ret = -ENOMEM;
		goto out;
	}

	/* Used by drm_gem_mmap() to lookup the GEM object */
	priv->minor = obj->dev->primary;
	fil->private_data = priv;

	ret = FUNC0(&obj->vma_node, priv);
	if (ret)
		goto out;

	vma->vm_pgoff += FUNC2(&obj->vma_node);

	ret = obj->dev->driver->fops->mmap(fil, vma);

	FUNC1(&obj->vma_node, priv);
out:
	FUNC3(priv);
	FUNC3(fil);

	return ret;
}