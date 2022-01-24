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
struct bio_list {int dummy; } ;
struct thin_c {struct bio_list deferred_bio_list; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC1 (struct thin_c*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC4 (struct bio_list*) ; 

__attribute__((used)) static void FUNC5(struct thin_c *tc)
{
	struct bio *bio;
	struct bio_list bios;

	FUNC2(&bios);
	FUNC3(&bios, &tc->deferred_bio_list);
	FUNC2(&tc->deferred_bio_list);

	/* Sort deferred_bio_list using rb-tree */
	while ((bio = FUNC4(&bios)))
		FUNC1(tc, bio);

	/*
	 * Transfer the sorted bios in sort_bio_list back to
	 * deferred_bio_list to allow lockless submission of
	 * all bios.
	 */
	FUNC0(tc);
}