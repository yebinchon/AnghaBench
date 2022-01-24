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
struct seq_file {struct drm_info_node* private; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {struct armada_private* dev_private; } ;
struct armada_private {int /*<<< orphan*/  linear_lock; int /*<<< orphan*/  linear; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct drm_printer*) ; 
 struct drm_printer FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *data)
{
	struct drm_info_node *node = m->private;
	struct drm_device *dev = node->minor->dev;
	struct armada_private *priv = dev->dev_private;
	struct drm_printer p = FUNC1(m);

	FUNC2(&priv->linear_lock);
	FUNC0(&priv->linear, &p);
	FUNC3(&priv->linear_lock);

	return 0;
}