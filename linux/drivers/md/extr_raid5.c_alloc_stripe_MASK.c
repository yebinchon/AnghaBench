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
struct stripe_head {int /*<<< orphan*/  ppl_page; struct r5dev* dev; int /*<<< orphan*/  log_start; struct r5conf* raid_conf; int /*<<< orphan*/  count; int /*<<< orphan*/  log_list; int /*<<< orphan*/  r5c; int /*<<< orphan*/  lru; int /*<<< orphan*/  batch_list; int /*<<< orphan*/  batch_lock; int /*<<< orphan*/  stripe_lock; } ;
struct r5dev {int /*<<< orphan*/  rvec; int /*<<< orphan*/  rreq; int /*<<< orphan*/  vec; int /*<<< orphan*/  req; } ;
struct r5conf {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MaxSector ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,struct stripe_head*) ; 
 struct stripe_head* FUNC5 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct stripe_head *FUNC8(struct kmem_cache *sc, gfp_t gfp,
	int disks, struct r5conf *conf)
{
	struct stripe_head *sh;
	int i;

	sh = FUNC5(sc, gfp);
	if (sh) {
		FUNC7(&sh->stripe_lock);
		FUNC7(&sh->batch_lock);
		FUNC0(&sh->batch_list);
		FUNC0(&sh->lru);
		FUNC0(&sh->r5c);
		FUNC0(&sh->log_list);
		FUNC2(&sh->count, 1);
		sh->raid_conf = conf;
		sh->log_start = MaxSector;
		for (i = 0; i < disks; i++) {
			struct r5dev *dev = &sh->dev[i];

			FUNC3(&dev->req, &dev->vec, 1);
			FUNC3(&dev->rreq, &dev->rvec, 1);
		}

		if (FUNC6(conf)) {
			sh->ppl_page = FUNC1(gfp);
			if (!sh->ppl_page) {
				FUNC4(sc, sh);
				sh = NULL;
			}
		}
	}
	return sh;
}