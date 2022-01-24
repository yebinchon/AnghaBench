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
struct nvkm_ior {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_ior*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_ior*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct nvkm_ior **pior)
{
	struct nvkm_ior *ior = *pior;
	if (ior) {
		FUNC0(ior, "dtor");
		FUNC2(&ior->head);
		FUNC1(*pior);
		*pior = NULL;
	}
}