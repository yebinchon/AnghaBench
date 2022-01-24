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
struct TYPE_2__ {int /*<<< orphan*/  bios; } ;
struct pblk_rb_entry {TYPE_1__ w_ctx; } ;
struct pblk_rb {unsigned int nr_entries; int /*<<< orphan*/  flush_point; struct pblk_rb_entry* entries; int /*<<< orphan*/  inflight_flush_point; int /*<<< orphan*/  sync; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk_rb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk_rb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct pblk_rb *rb, struct bio *bio,
				   unsigned int pos)
{
	struct pblk_rb_entry *entry;
	unsigned int sync, flush_point;

	FUNC4(rb, NULL);
	sync = FUNC0(rb->sync);

	if (pos == sync) {
		FUNC3(rb, NULL);
		return 0;
	}

#ifdef CONFIG_NVM_PBLK_DEBUG
	atomic_inc(&rb->inflight_flush_point);
#endif

	flush_point = (pos == 0) ? (rb->nr_entries - 1) : (pos - 1);
	entry = &rb->entries[flush_point];

	/* Protect flush points */
	FUNC5(&rb->flush_point, flush_point);

	if (bio)
		FUNC2(&entry->w_ctx.bios, bio);

	FUNC3(rb, NULL);

	return bio ? 1 : 0;
}