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
struct dm_crypt_io {scalar_t__ error; struct crypt_config* cc; } ;
struct crypt_config {int dummy; } ;
struct bio {scalar_t__ bi_status; struct dm_crypt_io* bi_private; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 unsigned int READ ; 
 unsigned int WRITE ; 
 unsigned int FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypt_config*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_crypt_io*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct bio *clone)
{
	struct dm_crypt_io *io = clone->bi_private;
	struct crypt_config *cc = io->cc;
	unsigned rw = FUNC0(clone);
	blk_status_t error;

	/*
	 * free the processed pages
	 */
	if (rw == WRITE)
		FUNC3(cc, clone);

	error = clone->bi_status;
	FUNC1(clone);

	if (rw == READ && !error) {
		FUNC4(io);
		return;
	}

	if (FUNC5(error))
		io->error = error;

	FUNC2(io);
}