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
struct vc4_dev {int /*<<< orphan*/  underrun; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_printer*,char*,int /*<<< orphan*/ ) ; 
 struct drm_printer FUNC2 (struct seq_file*) ; 
 struct vc4_dev* FUNC3 (struct drm_device*) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *data)
{
	struct drm_info_node *node = m->private;
	struct drm_device *dev = node->minor->dev;
	struct vc4_dev *vc4 = FUNC3(dev);
	struct drm_printer p = FUNC2(m);

	FUNC1(&p, "%d\n", FUNC0(&vc4->underrun));

	return 0;
}