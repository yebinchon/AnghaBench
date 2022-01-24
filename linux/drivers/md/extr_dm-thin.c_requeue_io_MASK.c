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
struct thin_c {int /*<<< orphan*/  lock; int /*<<< orphan*/  retry_on_resume_list; int /*<<< orphan*/  deferred_bio_list; } ;
struct bio_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DM_REQUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct bio_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thin_c*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct thin_c *tc)
{
	struct bio_list bios;
	unsigned long flags;

	FUNC1(&bios);

	FUNC4(&tc->lock, flags);
	FUNC0(&bios, &tc->deferred_bio_list);
	FUNC0(&bios, &tc->retry_on_resume_list);
	FUNC5(&tc->lock, flags);

	FUNC2(&bios, BLK_STS_DM_REQUEUE);
	FUNC3(tc);
}