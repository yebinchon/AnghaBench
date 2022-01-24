#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  wq; int /*<<< orphan*/  flush_journal; scalar_t__ flags; scalar_t__ status; scalar_t__ write_prio; int /*<<< orphan*/  write_point; int /*<<< orphan*/  inode; int /*<<< orphan*/ * bio; TYPE_1__* c; } ;
struct search {int recoverable; TYPE_2__ iop; int /*<<< orphan*/  start_time; scalar_t__ read_dirty_data; int /*<<< orphan*/  write; struct bcache_device* d; scalar_t__ cache_missed; int /*<<< orphan*/ * cache_miss; struct bio* orig_bio; int /*<<< orphan*/  cl; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;
struct bcache_device {int /*<<< orphan*/  id; TYPE_1__* c; } ;
struct TYPE_3__ {int /*<<< orphan*/  search_inflight; int /*<<< orphan*/  search; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bcache_wq ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC3 (struct search*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  jiffies ; 
 struct search* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  request_endio ; 

__attribute__((used)) static inline struct search *FUNC8(struct bio *bio,
					  struct bcache_device *d)
{
	struct search *s;

	s = FUNC5(&d->c->search, GFP_NOIO);

	FUNC2(&s->cl, NULL);
	FUNC3(s, bio, request_endio);
	FUNC0(&d->c->search_inflight);

	s->orig_bio		= bio;
	s->cache_miss		= NULL;
	s->cache_missed		= 0;
	s->d			= d;
	s->recoverable		= 1;
	s->write		= FUNC7(FUNC1(bio));
	s->read_dirty_data	= 0;
	s->start_time		= jiffies;

	s->iop.c		= d->c;
	s->iop.bio		= NULL;
	s->iop.inode		= d->id;
	s->iop.write_point	= FUNC4((unsigned long) current, 16);
	s->iop.write_prio	= 0;
	s->iop.status		= 0;
	s->iop.flags		= 0;
	s->iop.flush_journal	= FUNC6(bio->bi_opf);
	s->iop.wq		= bcache_wq;

	return s;
}