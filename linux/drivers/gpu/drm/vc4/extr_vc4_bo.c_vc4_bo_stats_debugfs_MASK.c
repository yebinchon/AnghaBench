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
struct vc4_dev {int dummy; } ;
struct seq_file {scalar_t__ private; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;

/* Variables and functions */
 struct drm_printer FUNC0 (struct seq_file*) ; 
 struct vc4_dev* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_printer*,struct vc4_dev*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *unused)
{
	struct drm_info_node *node = (struct drm_info_node *)m->private;
	struct drm_device *dev = node->minor->dev;
	struct vc4_dev *vc4 = FUNC1(dev);
	struct drm_printer p = FUNC0(m);

	FUNC2(&p, vc4);

	return 0;
}