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
struct resync_pages {int dummy; } ;
struct r10conf {int copies; } ;
struct r10bio {TYPE_1__* devs; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct bio* repl_bio; struct bio* bio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 struct resync_pages* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct resync_pages*) ; 
 int /*<<< orphan*/  FUNC3 (struct r10bio*,struct r10conf*) ; 
 int /*<<< orphan*/  FUNC4 (struct resync_pages*) ; 

__attribute__((used)) static void FUNC5(void *__r10_bio, void *data)
{
	struct r10conf *conf = data;
	struct r10bio *r10bio = __r10_bio;
	int j;
	struct resync_pages *rp = NULL;

	for (j = conf->copies; j--; ) {
		struct bio *bio = r10bio->devs[j].bio;

		if (bio) {
			rp = FUNC1(bio);
			FUNC4(rp);
			FUNC0(bio);
		}

		bio = r10bio->devs[j].repl_bio;
		if (bio)
			FUNC0(bio);
	}

	/* resync pages array stored in the 1st bio's .bi_private */
	FUNC2(rp);

	FUNC3(r10bio, conf);
}