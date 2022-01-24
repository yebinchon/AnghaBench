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
struct r10conf {TYPE_1__* mirrors; } ;
struct r10bio {struct mddev* mddev; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {int dummy; } ;
struct bio {scalar_t__ bi_status; } ;
struct TYPE_2__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r10bio*) ; 
 int FUNC1 (struct r10conf*,struct r10bio*,struct bio*,int*,int*) ; 
 struct r10bio* FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct bio *bio)
{
	struct r10bio *r10_bio = FUNC2(bio);
	struct mddev *mddev = r10_bio->mddev;
	struct r10conf *conf = mddev->private;
	int d;
	int slot;
	int repl;
	struct md_rdev *rdev = NULL;

	d = FUNC1(conf, r10_bio, bio, &slot, &repl);
	if (repl)
		rdev = conf->mirrors[d].replacement;
	if (!rdev) {
		FUNC5();
		rdev = conf->mirrors[d].rdev;
	}

	if (bio->bi_status) {
		/* FIXME should record badblock */
		FUNC3(mddev, rdev);
	}

	FUNC4(rdev, mddev);
	FUNC0(r10_bio);
}