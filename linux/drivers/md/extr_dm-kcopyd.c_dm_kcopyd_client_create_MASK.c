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
struct dm_kcopyd_throttle {int dummy; } ;
struct dm_kcopyd_client {int sub_job_size; int /*<<< orphan*/  job_pool; int /*<<< orphan*/  kcopyd_wq; int /*<<< orphan*/  nr_jobs; int /*<<< orphan*/  destroyq; int /*<<< orphan*/  io_client; scalar_t__ nr_free_pages; scalar_t__ nr_reserved_pages; int /*<<< orphan*/ * pages; int /*<<< orphan*/  kcopyd_work; struct dm_kcopyd_throttle* throttle; int /*<<< orphan*/  pages_jobs; int /*<<< orphan*/  io_jobs; int /*<<< orphan*/  complete_jobs; int /*<<< orphan*/  callback_jobs; int /*<<< orphan*/  job_lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct dm_kcopyd_client* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_JOBS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  _job_cache ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_kcopyd_client*) ; 
 int FUNC9 (struct dm_kcopyd_client*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  do_work ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct dm_kcopyd_client*) ; 
 struct dm_kcopyd_client* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

struct dm_kcopyd_client *FUNC19(struct dm_kcopyd_throttle *throttle)
{
	int r;
	unsigned reserve_pages;
	struct dm_kcopyd_client *kc;

	kc = FUNC15(sizeof(*kc), GFP_KERNEL);
	if (!kc)
		return FUNC1(-ENOMEM);

	FUNC18(&kc->job_lock);
	FUNC2(&kc->callback_jobs);
	FUNC2(&kc->complete_jobs);
	FUNC2(&kc->io_jobs);
	FUNC2(&kc->pages_jobs);
	kc->throttle = throttle;

	r = FUNC17(&kc->job_pool, MIN_JOBS, _job_cache);
	if (r)
		goto bad_slab;

	FUNC3(&kc->kcopyd_work, do_work);
	kc->kcopyd_wq = FUNC6("kcopyd", WQ_MEM_RECLAIM, 0);
	if (!kc->kcopyd_wq) {
		r = -ENOMEM;
		goto bad_workqueue;
	}

	kc->sub_job_size = FUNC11();
	reserve_pages = FUNC0(kc->sub_job_size << SECTOR_SHIFT, PAGE_SIZE);

	kc->pages = NULL;
	kc->nr_reserved_pages = kc->nr_free_pages = 0;
	r = FUNC9(kc, reserve_pages);
	if (r)
		goto bad_client_pages;

	kc->io_client = FUNC12();
	if (FUNC4(kc->io_client)) {
		r = FUNC5(kc->io_client);
		goto bad_io_client;
	}

	FUNC13(&kc->destroyq);
	FUNC7(&kc->nr_jobs, 0);

	return kc;

bad_io_client:
	FUNC8(kc);
bad_client_pages:
	FUNC10(kc->kcopyd_wq);
bad_workqueue:
	FUNC16(&kc->job_pool);
bad_slab:
	FUNC14(kc);

	return FUNC1(r);
}