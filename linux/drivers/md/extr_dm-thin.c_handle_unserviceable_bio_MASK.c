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
struct bio {scalar_t__ bi_status; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct pool*) ; 

__attribute__((used)) static void FUNC3(struct pool *pool, struct bio *bio)
{
	blk_status_t error = FUNC2(pool);

	if (error) {
		bio->bi_status = error;
		FUNC0(bio);
	} else
		FUNC1(bio);
}