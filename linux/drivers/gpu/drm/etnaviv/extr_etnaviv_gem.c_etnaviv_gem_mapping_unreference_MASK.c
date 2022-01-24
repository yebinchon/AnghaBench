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
struct etnaviv_vram_mapping {scalar_t__ use; struct etnaviv_gem_object* object; } ;
struct etnaviv_gem_object {int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct etnaviv_vram_mapping *mapping)
{
	struct etnaviv_gem_object *etnaviv_obj = mapping->object;

	FUNC2(&etnaviv_obj->lock);
	FUNC0(mapping->use == 0);
	mapping->use -= 1;
	FUNC3(&etnaviv_obj->lock);

	FUNC1(&etnaviv_obj->base);
}