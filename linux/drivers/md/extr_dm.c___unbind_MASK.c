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
struct mapped_device {int /*<<< orphan*/  map; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_table*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dm_table* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dm_table *FUNC4(struct mapped_device *md)
{
	struct dm_table *map = FUNC3(md->map, 1);

	if (!map)
		return NULL;

	FUNC2(map, NULL, NULL);
	FUNC0(md->map, NULL);
	FUNC1(md);

	return map;
}