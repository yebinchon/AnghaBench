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
typedef  int uint64_t ;
struct cache {int /*<<< orphan*/  cache_dev_name; TYPE_1__* set; int /*<<< orphan*/  io_errors; int /*<<< orphan*/  io_count; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_2__ {unsigned int error_decay; unsigned int error_limit; } ;

/* Variables and functions */
 int IO_ERROR_SHIFT ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char const*,char*) ; 

void FUNC6(struct cache *ca,
			 blk_status_t error,
			 int is_read,
			 const char *m)
{
	/*
	 * The halflife of an error is:
	 * log2(1/2)/log2(127/128) * refresh ~= 88 * refresh
	 */

	if (ca->set->error_decay) {
		unsigned int count = FUNC2(&ca->io_count);

		while (count > ca->set->error_decay) {
			unsigned int errors;
			unsigned int old = count;
			unsigned int new = count - ca->set->error_decay;

			/*
			 * First we subtract refresh from count; each time we
			 * successfully do so, we rescale the errors once:
			 */

			count = FUNC1(&ca->io_count, old, new);

			if (count == old) {
				count = new;

				errors = FUNC3(&ca->io_errors);
				do {
					old = errors;
					new = ((uint64_t) errors * 127) / 128;
					errors = FUNC1(&ca->io_errors,
								old, new);
				} while (old != errors);
			}
		}
	}

	if (error) {
		unsigned int errors = FUNC0(1 << IO_ERROR_SHIFT,
						    &ca->io_errors);
		errors >>= IO_ERROR_SHIFT;

		if (errors < ca->set->error_limit)
			FUNC5("%s: IO error on %s%s",
			       ca->cache_dev_name, m,
			       is_read ? ", recovering." : ".");
		else
			FUNC4(ca->set,
					    "%s: too many IO errors %s",
					    ca->cache_dev_name, m);
	}
}