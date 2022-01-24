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
struct io {int dummy; } ;
struct bio {scalar_t__ bi_status; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 scalar_t__ READ ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct io*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct io**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 

__attribute__((used)) static void FUNC5(struct bio *bio)
{
	struct io *io;
	unsigned region;
	blk_status_t error;

	if (bio->bi_status && FUNC0(bio) == READ)
		FUNC4(bio);

	/*
	 * The bio destructor in bio_put() may use the io object.
	 */
	FUNC3(bio, &io, &region);

	error = bio->bi_status;
	FUNC1(bio);

	FUNC2(io, region, error);
}