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
struct dm_thin_new_mapping {int /*<<< orphan*/  status; int /*<<< orphan*/  saved_bi_end_io; } ;
struct dm_thin_endio_hook {struct dm_thin_new_mapping* overwrite_mapping; } ;
struct bio {int /*<<< orphan*/  bi_status; int /*<<< orphan*/  bi_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_thin_new_mapping*) ; 
 struct dm_thin_endio_hook* FUNC1 (struct bio*,int) ; 

__attribute__((used)) static void FUNC2(struct bio *bio)
{
	struct dm_thin_endio_hook *h = FUNC1(bio, sizeof(struct dm_thin_endio_hook));
	struct dm_thin_new_mapping *m = h->overwrite_mapping;

	bio->bi_end_io = m->saved_bi_end_io;

	m->status = bio->bi_status;
	FUNC0(m);
}