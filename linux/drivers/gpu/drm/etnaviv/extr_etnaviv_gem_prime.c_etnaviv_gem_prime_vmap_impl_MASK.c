#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* import_attach; } ;
struct etnaviv_gem_object {TYPE_2__ base; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dmabuf; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC2(struct etnaviv_gem_object *etnaviv_obj)
{
	FUNC1(&etnaviv_obj->lock);

	return FUNC0(etnaviv_obj->base.import_attach->dmabuf);
}