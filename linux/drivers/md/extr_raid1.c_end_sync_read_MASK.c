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
struct r1bio {int /*<<< orphan*/  remaining; int /*<<< orphan*/  state; int /*<<< orphan*/  read_disk; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  R1BIO_Uptodate ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct r1bio* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct r1bio*) ; 

__attribute__((used)) static void FUNC5(struct bio *bio)
{
	struct r1bio *r1_bio = FUNC1(bio);

	FUNC4(r1_bio->read_disk, r1_bio);

	/*
	 * we have read a block, now it needs to be re-written,
	 * or re-read if the read failed.
	 * We don't do much here, just schedule handling by raid1d
	 */
	if (!bio->bi_status)
		FUNC3(R1BIO_Uptodate, &r1_bio->state);

	if (FUNC0(&r1_bio->remaining))
		FUNC2(r1_bio);
}