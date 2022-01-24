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
struct bio {void* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,struct io*) ; 
 int /*<<< orphan*/  DM_IO_MAX_REGIONS ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct bio *bio, struct io *io,
				       unsigned region)
{
	if (FUNC3(!FUNC2((unsigned long)io, DM_IO_MAX_REGIONS))) {
		FUNC1("Unaligned struct io pointer %p", io);
		FUNC0();
	}

	bio->bi_private = (void *)((unsigned long)io | region);
}