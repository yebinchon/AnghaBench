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
struct r10bio {int /*<<< orphan*/  state; int /*<<< orphan*/ * master_bio; int /*<<< orphan*/  sectors; int /*<<< orphan*/  remaining; struct mddev* mddev; } ;
struct mddev {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  R10BIO_MadeGood ; 
 int /*<<< orphan*/  R10BIO_WriteError ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct r10bio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r10bio *r10_bio)
{
	struct mddev *mddev = r10_bio->mddev;

	while (FUNC0(&r10_bio->remaining)) {
		if (r10_bio->master_bio == NULL) {
			/* the primary of several recovery bios */
			sector_t s = r10_bio->sectors;
			if (FUNC4(R10BIO_MadeGood, &r10_bio->state) ||
			    FUNC4(R10BIO_WriteError, &r10_bio->state))
				FUNC3(r10_bio);
			else
				FUNC2(r10_bio);
			FUNC1(mddev, s, 1);
			break;
		} else {
			struct r10bio *r10_bio2 = (struct r10bio *)r10_bio->master_bio;
			if (FUNC4(R10BIO_MadeGood, &r10_bio->state) ||
			    FUNC4(R10BIO_WriteError, &r10_bio->state))
				FUNC3(r10_bio);
			else
				FUNC2(r10_bio);
			r10_bio = r10_bio2;
		}
	}
}