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
struct r10bio {int /*<<< orphan*/  state; int /*<<< orphan*/  remaining; } ;

/* Variables and functions */
 int /*<<< orphan*/  R10BIO_MadeGood ; 
 int /*<<< orphan*/  R10BIO_WriteError ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct r10bio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r10bio *r10_bio)
{
	if (FUNC0(&r10_bio->remaining)) {
		if (FUNC4(R10BIO_WriteError, &r10_bio->state))
			FUNC3(r10_bio);
		else {
			FUNC1(r10_bio);
			if (FUNC4(R10BIO_MadeGood, &r10_bio->state))
				FUNC3(r10_bio);
			else
				FUNC2(r10_bio);
		}
	}
}