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
struct dust_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  badblock_count; int /*<<< orphan*/  badblocklist; } ;
struct dm_target {struct dust_device* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dust_device*) ; 

__attribute__((used)) static void FUNC3(struct dm_target *ti)
{
	struct dust_device *dd = ti->private;

	FUNC0(&dd->badblocklist, dd->badblock_count);
	FUNC1(ti, dd->dev);
	FUNC2(dd);
}