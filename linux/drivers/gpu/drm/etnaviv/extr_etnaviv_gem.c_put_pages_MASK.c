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
struct etnaviv_gem_object {int /*<<< orphan*/ * pages; int /*<<< orphan*/  base; int /*<<< orphan*/ * sgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct etnaviv_gem_object *etnaviv_obj)
{
	if (etnaviv_obj->sgt) {
		FUNC1(etnaviv_obj);
		FUNC3(etnaviv_obj->sgt);
		FUNC2(etnaviv_obj->sgt);
		etnaviv_obj->sgt = NULL;
	}
	if (etnaviv_obj->pages) {
		FUNC0(&etnaviv_obj->base, etnaviv_obj->pages,
				  true, false);

		etnaviv_obj->pages = NULL;
	}
}