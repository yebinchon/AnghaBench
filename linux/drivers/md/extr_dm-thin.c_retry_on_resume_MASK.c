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
struct thin_c {int /*<<< orphan*/  lock; int /*<<< orphan*/  retry_on_resume_list; } ;
struct dm_thin_endio_hook {struct thin_c* tc; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 struct dm_thin_endio_hook* FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct bio *bio)
{
	struct dm_thin_endio_hook *h = FUNC1(bio, sizeof(struct dm_thin_endio_hook));
	struct thin_c *tc = h->tc;
	unsigned long flags;

	FUNC2(&tc->lock, flags);
	FUNC0(&tc->retry_on_resume_list, bio);
	FUNC3(&tc->lock, flags);
}