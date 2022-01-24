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
struct dax_device {char const* host; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/ * dax_host_list ; 
 int /*<<< orphan*/  dax_host_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dax_device *dax_dev, const char *host)
{
	int hash;

	/*
	 * Unconditionally init dax_dev since it's coming from a
	 * non-zeroed slab cache
	 */
	FUNC0(&dax_dev->list);
	dax_dev->host = host;
	if (!host)
		return;

	hash = FUNC1(host);
	FUNC3(&dax_host_lock);
	FUNC2(&dax_dev->list, &dax_host_list[hash]);
	FUNC4(&dax_host_lock);
}