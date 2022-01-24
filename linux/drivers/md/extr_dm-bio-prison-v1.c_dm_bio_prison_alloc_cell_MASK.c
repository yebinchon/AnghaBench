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
struct dm_bio_prison_cell {int dummy; } ;
struct dm_bio_prison {int /*<<< orphan*/  cell_pool; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct dm_bio_prison_cell* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct dm_bio_prison_cell *FUNC1(struct dm_bio_prison *prison, gfp_t gfp)
{
	return FUNC0(&prison->cell_pool, gfp);
}