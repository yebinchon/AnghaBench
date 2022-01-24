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
struct r1bio {int /*<<< orphan*/  state; int /*<<< orphan*/  remaining; } ;

/* Variables and functions */
 int /*<<< orphan*/  R1BIO_MadeGood ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct r1bio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r1bio *r1_bio)
{
	if (!FUNC0(&r1_bio->remaining))
		return;

	if (FUNC4(R1BIO_WriteError, &r1_bio->state))
		FUNC3(r1_bio);
	else {
		FUNC1(r1_bio);
		if (FUNC4(R1BIO_MadeGood, &r1_bio->state))
			FUNC3(r1_bio);
		else
			FUNC2(r1_bio);
	}
}