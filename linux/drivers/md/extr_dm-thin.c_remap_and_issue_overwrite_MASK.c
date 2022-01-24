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
struct thin_c {struct pool* pool; } ;
struct pool {int dummy; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/  saved_bi_end_io; struct bio* bio; } ;
struct dm_thin_endio_hook {struct dm_thin_new_mapping* overwrite_mapping; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 struct dm_thin_endio_hook* FUNC0 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pool*,struct bio*) ; 
 int /*<<< orphan*/  overwrite_endio ; 
 int /*<<< orphan*/  FUNC2 (struct thin_c*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct thin_c *tc, struct bio *bio,
				      dm_block_t data_begin,
				      struct dm_thin_new_mapping *m)
{
	struct pool *pool = tc->pool;
	struct dm_thin_endio_hook *h = FUNC0(bio, sizeof(struct dm_thin_endio_hook));

	h->overwrite_mapping = m;
	m->bio = bio;
	FUNC3(bio, &m->saved_bi_end_io, overwrite_endio);
	FUNC1(pool, bio);
	FUNC2(tc, bio, data_begin);
}