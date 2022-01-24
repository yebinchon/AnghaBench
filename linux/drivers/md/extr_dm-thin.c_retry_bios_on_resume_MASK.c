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
struct pool {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_list*) ; 
 struct bio* FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct pool*,struct dm_bio_prison_cell*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*,struct dm_bio_prison_cell*,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 scalar_t__ FUNC5 (struct pool*) ; 

__attribute__((used)) static void FUNC6(struct pool *pool, struct dm_bio_prison_cell *cell)
{
	struct bio *bio;
	struct bio_list bios;
	blk_status_t error;

	error = FUNC5(pool);
	if (error) {
		FUNC2(pool, cell, error);
		return;
	}

	FUNC0(&bios);
	FUNC3(pool, cell, &bios);

	while ((bio = FUNC1(&bios)))
		FUNC4(bio);
}