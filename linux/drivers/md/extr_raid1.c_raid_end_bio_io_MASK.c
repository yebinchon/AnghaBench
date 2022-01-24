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
struct r1bio {int /*<<< orphan*/  state; struct bio* master_bio; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  R1BIO_Returned ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct r1bio *r1_bio)
{
	struct bio *bio = r1_bio->master_bio;

	/* if nobody has done the final endio yet, do it now */
	if (!FUNC5(R1BIO_Returned, &r1_bio->state)) {
		FUNC4("raid1: sync end %s on sectors %llu-%llu\n",
			 (FUNC0(bio) == WRITE) ? "write" : "read",
			 (unsigned long long) bio->bi_iter.bi_sector,
			 (unsigned long long) FUNC1(bio) - 1);

		FUNC2(r1_bio);
	}
	FUNC3(r1_bio);
}