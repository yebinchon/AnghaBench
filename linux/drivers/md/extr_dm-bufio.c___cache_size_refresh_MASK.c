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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  dm_bufio_cache_size ; 
 scalar_t__ dm_bufio_cache_size_latch ; 
 scalar_t__ dm_bufio_client_count ; 
 int /*<<< orphan*/  dm_bufio_clients_lock ; 
 scalar_t__ dm_bufio_default_cache_size ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC0(!FUNC3(&dm_bufio_clients_lock));
	FUNC0(dm_bufio_client_count < 0);

	dm_bufio_cache_size_latch = FUNC1(dm_bufio_cache_size);

	/*
	 * Use default if set to 0 and report the actual cache size used.
	 */
	if (!dm_bufio_cache_size_latch) {
		(void)FUNC2(&dm_bufio_cache_size, 0,
			      dm_bufio_default_cache_size);
		dm_bufio_cache_size_latch = dm_bufio_default_cache_size;
	}
}