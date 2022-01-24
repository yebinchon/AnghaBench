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
struct dmz_target {int /*<<< orphan*/ * dev; int /*<<< orphan*/  ddev; } ;
struct dm_target {struct dmz_target* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dm_target *ti)
{
	struct dmz_target *dmz = ti->private;

	FUNC0(ti, dmz->ddev);
	FUNC1(dmz->dev);
	dmz->dev = NULL;
}