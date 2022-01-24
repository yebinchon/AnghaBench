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
struct dm_cell_key_v2 {int dummy; } ;
struct dm_bio_prison_cell_v2 {int /*<<< orphan*/  bios; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dm_cell_key_v2*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_bio_prison_cell_v2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct dm_cell_key_v2 *key,
			     struct dm_bio_prison_cell_v2 *cell)
{
	FUNC2(cell, 0, sizeof(*cell));
	FUNC1(&cell->key, key, sizeof(cell->key));
	FUNC0(&cell->bios);
}