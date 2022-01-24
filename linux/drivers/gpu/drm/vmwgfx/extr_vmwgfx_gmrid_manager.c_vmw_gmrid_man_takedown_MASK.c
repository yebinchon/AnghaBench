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
struct vmwgfx_gmrid_man {int /*<<< orphan*/  gmr_ida; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vmwgfx_gmrid_man*) ; 

__attribute__((used)) static int FUNC2(struct ttm_mem_type_manager *man)
{
	struct vmwgfx_gmrid_man *gman =
		(struct vmwgfx_gmrid_man *)man->priv;

	if (gman) {
		FUNC0(&gman->gmr_ida);
		FUNC1(gman);
	}
	return 0;
}