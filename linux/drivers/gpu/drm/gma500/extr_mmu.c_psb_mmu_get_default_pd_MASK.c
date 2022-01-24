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
struct psb_mmu_pd {int dummy; } ;
struct psb_mmu_driver {int /*<<< orphan*/  sem; struct psb_mmu_pd* default_pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct psb_mmu_pd *FUNC2(struct psb_mmu_driver *driver)
{
	struct psb_mmu_pd *pd;

	FUNC0(&driver->sem);
	pd = driver->default_pd;
	FUNC1(&driver->sem);

	return pd;
}