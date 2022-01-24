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
struct search {int dummy; } ;
struct btree {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int MAP_CONTINUE ; 
 int MAP_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 

__attribute__((used)) static int FUNC5(struct btree *b, struct search *s,
				struct bio *bio, unsigned int sectors)
{
	unsigned int bytes = FUNC2(sectors, FUNC1(bio)) << 9;

	FUNC3(bio->bi_iter.bi_size, bytes);
	FUNC4(bio);
	FUNC3(bio->bi_iter.bi_size, bytes);

	FUNC0(bio, bytes);

	if (!bio->bi_iter.bi_size)
		return MAP_DONE;

	return MAP_CONTINUE;
}