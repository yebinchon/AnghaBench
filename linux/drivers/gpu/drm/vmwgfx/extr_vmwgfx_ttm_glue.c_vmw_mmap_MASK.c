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
struct vmw_private {int /*<<< orphan*/  bdev; } ;
struct vm_area_struct {int dummy; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct file*,struct vm_area_struct*,int /*<<< orphan*/ *) ; 
 struct vmw_private* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct file *filp, struct vm_area_struct *vma)
{
	struct drm_file *file_priv = filp->private_data;
	struct vmw_private *dev_priv = FUNC1(file_priv->minor->dev);

	return FUNC0(filp, vma, &dev_priv->bdev);
}