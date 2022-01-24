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
struct list_head {int dummy; } ;
struct g2d_runqueue_node {int /*<<< orphan*/  complete; scalar_t__ async; int /*<<< orphan*/  list; struct drm_file* filp; int /*<<< orphan*/  pid; struct list_head event_list; struct list_head run_cmdlist; } ;
struct g2d_data {int /*<<< orphan*/  runqueue_work; int /*<<< orphan*/  g2d_workq; int /*<<< orphan*/  runqueue_mutex; int /*<<< orphan*/  runqueue; int /*<<< orphan*/  runqueue_slab; int /*<<< orphan*/  dev; } ;
struct exynos_drm_private {int /*<<< orphan*/  g2d_dev; } ;
struct drm_file {struct drm_exynos_file_private* driver_priv; } ;
struct drm_exynos_g2d_exec {scalar_t__ async; } ;
struct drm_exynos_file_private {int /*<<< orphan*/  event_list; int /*<<< orphan*/  inuse_cmdlist; } ;
struct drm_device {struct exynos_drm_private* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct g2d_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct g2d_data*,struct g2d_runqueue_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct g2d_runqueue_node* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct g2d_runqueue_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct drm_device *drm_dev, void *data,
			  struct drm_file *file)
{
	struct drm_exynos_file_private *file_priv = file->driver_priv;
	struct exynos_drm_private *priv = drm_dev->dev_private;
	struct g2d_data *g2d = FUNC2(priv->g2d_dev);
	struct drm_exynos_g2d_exec *req = data;
	struct g2d_runqueue_node *runqueue_node;
	struct list_head *run_cmdlist;
	struct list_head *event_list;

	runqueue_node = FUNC5(g2d->runqueue_slab, GFP_KERNEL);
	if (!runqueue_node)
		return -ENOMEM;

	run_cmdlist = &runqueue_node->run_cmdlist;
	event_list = &runqueue_node->event_list;
	FUNC0(run_cmdlist);
	FUNC0(event_list);
	FUNC4(&runqueue_node->complete);
	runqueue_node->async = req->async;

	FUNC9(&file_priv->inuse_cmdlist, run_cmdlist);
	FUNC9(&file_priv->event_list, event_list);

	if (FUNC8(run_cmdlist)) {
		FUNC1(g2d->dev, "there is no inuse cmdlist\n");
		FUNC6(g2d->runqueue_slab, runqueue_node);
		return -EPERM;
	}

	FUNC10(&g2d->runqueue_mutex);
	runqueue_node->pid = current->pid;
	runqueue_node->filp = file;
	FUNC7(&runqueue_node->list, &g2d->runqueue);
	FUNC11(&g2d->runqueue_mutex);

	/* Let the runqueue know that there is work to do. */
	FUNC12(g2d->g2d_workq, &g2d->runqueue_work);

	if (runqueue_node->async)
		goto out;

	FUNC13(&runqueue_node->complete);
	FUNC3(g2d, runqueue_node);

out:
	return 0;
}