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
struct drm_mode_config {int /*<<< orphan*/  connector_free_work; int /*<<< orphan*/  connector_free_list; int /*<<< orphan*/  connector_list_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_6__ {TYPE_2__ refcount; } ;
struct drm_connector {int /*<<< orphan*/  free_node; TYPE_3__ base; TYPE_1__* dev; } ;
struct TYPE_4__ {struct drm_mode_config mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct drm_connector *conn)
{
	struct drm_mode_config *config = &conn->dev->mode_config;

	FUNC1(&config->connector_list_lock);

	if (!FUNC2(&conn->base.refcount.refcount))
		return;

	FUNC0(&conn->free_node, &config->connector_free_list);
	FUNC3(&config->connector_free_work);
}