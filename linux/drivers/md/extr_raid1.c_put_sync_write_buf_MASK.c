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
struct r1bio {int sectors; int /*<<< orphan*/  state; struct mddev* mddev; int /*<<< orphan*/  remaining; } ;
struct mddev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R1BIO_MadeGood ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct r1bio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r1bio *r1_bio, int uptodate)
{
	if (FUNC0(&r1_bio->remaining)) {
		struct mddev *mddev = r1_bio->mddev;
		int s = r1_bio->sectors;

		if (FUNC4(R1BIO_MadeGood, &r1_bio->state) ||
		    FUNC4(R1BIO_WriteError, &r1_bio->state))
			FUNC3(r1_bio);
		else {
			FUNC2(r1_bio);
			FUNC1(mddev, s, uptodate);
		}
	}
}