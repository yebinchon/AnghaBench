#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct g2d_runqueue_node {scalar_t__ async; int /*<<< orphan*/  complete; struct drm_file* filp; } ;
struct g2d_data {int /*<<< orphan*/  runqueue_mutex; struct g2d_runqueue_node* runqueue_node; struct device* dev; } ;
struct drm_file {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct g2d_data*,struct g2d_runqueue_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct g2d_data*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static void FUNC9(struct g2d_data *g2d, struct drm_file *file)
{
	struct device *dev = g2d->dev;

	struct g2d_runqueue_node *runqueue_node = NULL;
	unsigned int tries = 10;

	FUNC5(&g2d->runqueue_mutex);

	/* If no node is currently processed, we have nothing to do. */
	if (!g2d->runqueue_node)
		goto out;

	runqueue_node = g2d->runqueue_node;

	/* Check if the currently processed item belongs to us. */
	if (file && runqueue_node->filp != file)
		goto out;

	FUNC6(&g2d->runqueue_mutex);

	/* Wait for the G2D engine to finish. */
	while (tries-- && (g2d->runqueue_node == runqueue_node))
		FUNC4(10);

	FUNC5(&g2d->runqueue_mutex);

	if (g2d->runqueue_node != runqueue_node)
		goto out;

	FUNC1(dev, "wait timed out, resetting engine...\n");
	FUNC3(g2d);

	/*
	 * After the hardware reset of the engine we are going to loose
	 * the IRQ which triggers the PM runtime put().
	 * So do this manually here.
	 */
	FUNC7(dev);
	FUNC8(dev);

	FUNC0(&runqueue_node->complete);
	if (runqueue_node->async)
		FUNC2(g2d, runqueue_node);

out:
	FUNC6(&g2d->runqueue_mutex);
}