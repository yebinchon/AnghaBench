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
struct drm_mode_config {int /*<<< orphan*/  connector_list_lock; } ;
struct drm_connector_list_iter {scalar_t__ conn; TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_mode_config mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  connector_list_iter_dep_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct drm_connector_list_iter *iter)
{
	struct drm_mode_config *config = &iter->dev->mode_config;
	unsigned long flags;

	iter->dev = NULL;
	if (iter->conn) {
		FUNC2(&config->connector_list_lock, flags);
		FUNC0(iter->conn);
		FUNC3(&config->connector_list_lock, flags);
	}
	FUNC1(&connector_list_iter_dep_map, 0, _RET_IP_);
}