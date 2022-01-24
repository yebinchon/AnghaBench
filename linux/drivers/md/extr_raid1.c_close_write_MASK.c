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
struct r1bio {TYPE_1__* mddev; int /*<<< orphan*/  state; int /*<<< orphan*/  sectors; int /*<<< orphan*/  sector; int /*<<< orphan*/ * behind_master_bio; } ;
struct TYPE_2__ {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  R1BIO_BehindIO ; 
 int /*<<< orphan*/  R1BIO_Degraded ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r1bio *r1_bio)
{
	/* it really is the end of this request */
	if (FUNC4(R1BIO_BehindIO, &r1_bio->state)) {
		FUNC0(r1_bio->behind_master_bio);
		FUNC1(r1_bio->behind_master_bio);
		r1_bio->behind_master_bio = NULL;
	}
	/* clear the bitmap if all writes complete successfully */
	FUNC2(r1_bio->mddev->bitmap, r1_bio->sector,
			   r1_bio->sectors,
			   !FUNC4(R1BIO_Degraded, &r1_bio->state),
			   FUNC4(R1BIO_BehindIO, &r1_bio->state));
	FUNC3(r1_bio->mddev);
}