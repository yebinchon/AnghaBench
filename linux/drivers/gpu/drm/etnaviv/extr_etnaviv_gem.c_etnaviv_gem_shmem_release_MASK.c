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
struct etnaviv_gem_object {int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct etnaviv_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct etnaviv_gem_object *etnaviv_obj)
{
	FUNC1(etnaviv_obj->vaddr);
	FUNC0(etnaviv_obj);
}