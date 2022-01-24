#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  oclass; } ;
struct nvkm_oclass {int /*<<< orphan*/  object; int /*<<< orphan*/  token; int /*<<< orphan*/  route; int /*<<< orphan*/  handle; TYPE_1__ base; int /*<<< orphan*/  engine; int /*<<< orphan*/  client; } ;
struct nvkm_object_func {int dummy; } ;
struct nvkm_object {int /*<<< orphan*/  engine; int /*<<< orphan*/  node; int /*<<< orphan*/  tree; int /*<<< orphan*/  head; int /*<<< orphan*/  object; int /*<<< orphan*/  token; int /*<<< orphan*/  route; int /*<<< orphan*/  handle; int /*<<< orphan*/  oclass; int /*<<< orphan*/  client; struct nvkm_object_func const* func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(const struct nvkm_object_func *func,
		 const struct nvkm_oclass *oclass, struct nvkm_object *object)
{
	object->func = func;
	object->client = oclass->client;
	object->engine = FUNC4(oclass->engine);
	object->oclass = oclass->base.oclass;
	object->handle = oclass->handle;
	object->route  = oclass->route;
	object->token  = oclass->token;
	object->object = oclass->object;
	FUNC0(&object->head);
	FUNC0(&object->tree);
	FUNC2(&object->node);
	FUNC3(FUNC1(object->engine));
}