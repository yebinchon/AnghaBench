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
struct drm_master {TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  lessee_idr; } ;
struct TYPE_4__ {int /*<<< orphan*/  idr_mutex; } ;
struct TYPE_5__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct drm_master*) ; 
 struct drm_master* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct drm_master*
FUNC3(struct drm_master *master, int lessee_id)
{
	FUNC2(&master->dev->mode_config.idr_mutex);
	return FUNC1(&FUNC0(master)->lessee_idr, lessee_id);
}