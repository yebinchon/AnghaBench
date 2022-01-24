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
struct dmz_target {int /*<<< orphan*/  chunk_lock; int /*<<< orphan*/  chunk_wq; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  chunk_rxtree; int /*<<< orphan*/  dev; } ;
struct dm_chunk_work {unsigned int chunk; int /*<<< orphan*/  work; int /*<<< orphan*/  bio_list; struct dmz_target* target; int /*<<< orphan*/  refcount; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  dmz_chunk_work ; 
 int /*<<< orphan*/  FUNC4 (struct dm_chunk_work*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_chunk_work*) ; 
 struct dm_chunk_work* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned int,struct dm_chunk_work*) ; 
 struct dm_chunk_work* FUNC12 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct dmz_target *dmz, struct bio *bio)
{
	unsigned int chunk = FUNC3(dmz->dev, bio);
	struct dm_chunk_work *cw;
	int ret = 0;

	FUNC8(&dmz->chunk_lock);

	/* Get the BIO chunk work. If one is not active yet, create one */
	cw = FUNC12(&dmz->chunk_rxtree, chunk);
	if (!cw) {

		/* Create a new chunk work */
		cw = FUNC7(sizeof(struct dm_chunk_work), GFP_NOIO);
		if (FUNC14(!cw)) {
			ret = -ENOMEM;
			goto out;
		}

		FUNC0(&cw->work, dmz_chunk_work);
		FUNC13(&cw->refcount, 0);
		cw->target = dmz;
		cw->chunk = chunk;
		FUNC2(&cw->bio_list);

		ret = FUNC11(&dmz->chunk_rxtree, chunk, cw);
		if (FUNC14(ret)) {
			FUNC6(cw);
			goto out;
		}
	}

	FUNC1(&cw->bio_list, bio);
	FUNC4(cw);

	FUNC5(dmz->reclaim);
	if (FUNC10(dmz->chunk_wq, &cw->work))
		FUNC4(cw);
out:
	FUNC9(&dmz->chunk_lock);
	return ret;
}