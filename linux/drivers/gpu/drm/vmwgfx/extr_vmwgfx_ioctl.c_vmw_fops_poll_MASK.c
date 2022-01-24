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
struct vmw_private {int dummy; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
typedef  int /*<<< orphan*/  __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVGA_SYNC_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (struct file*,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 struct vmw_private* FUNC2 (int /*<<< orphan*/ ) ; 

__poll_t FUNC3(struct file *filp, struct poll_table_struct *wait)
{
	struct drm_file *file_priv = filp->private_data;
	struct vmw_private *dev_priv =
		FUNC2(file_priv->minor->dev);

	FUNC1(dev_priv, SVGA_SYNC_GENERIC);
	return FUNC0(filp, wait);
}