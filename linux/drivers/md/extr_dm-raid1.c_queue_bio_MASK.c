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
struct bio_list {int /*<<< orphan*/  head; } ;
struct mirror_set {int /*<<< orphan*/  lock; struct bio_list reads; struct bio_list writes; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bio_list*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mirror_set*) ; 

__attribute__((used)) static void FUNC4(struct mirror_set *ms, struct bio *bio, int rw)
{
	unsigned long flags;
	int should_wake = 0;
	struct bio_list *bl;

	bl = (rw == WRITE) ? &ms->writes : &ms->reads;
	FUNC1(&ms->lock, flags);
	should_wake = !(bl->head);
	FUNC0(bl, bio);
	FUNC2(&ms->lock, flags);

	if (should_wake)
		FUNC3(ms);
}