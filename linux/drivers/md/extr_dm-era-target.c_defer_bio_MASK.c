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
struct era {int /*<<< orphan*/  deferred_lock; int /*<<< orphan*/  deferred_bios; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct era*) ; 

__attribute__((used)) static void FUNC4(struct era *era, struct bio *bio)
{
	FUNC1(&era->deferred_lock);
	FUNC0(&era->deferred_bios, bio);
	FUNC2(&era->deferred_lock);

	FUNC3(era);
}