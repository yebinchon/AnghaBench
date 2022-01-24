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
struct nvkm_object {int /*<<< orphan*/  head; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nvkm_object* FUNC3 (struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_object*) ; 

void
FUNC5(struct nvkm_object **pobject)
{
	struct nvkm_object *object = *pobject;
	if (object && !FUNC0(!object->func)) {
		*pobject = FUNC3(object);
		FUNC4(object);
		FUNC2(&object->head);
		FUNC1(*pobject);
		*pobject = NULL;
	}
}