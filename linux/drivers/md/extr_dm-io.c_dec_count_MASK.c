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
struct io {int /*<<< orphan*/  count; int /*<<< orphan*/  error_bits; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct io*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct io *io, unsigned int region, blk_status_t error)
{
	if (error)
		FUNC2(region, &io->error_bits);

	if (FUNC0(&io->count))
		FUNC1(io);
}