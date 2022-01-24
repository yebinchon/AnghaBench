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
struct nvkm_object {int dummy; } ;
struct nvkm_client {int /*<<< orphan*/  notify; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_object*,char*,char const*) ; 
 struct nvkm_client* FUNC2 (struct nvkm_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_client*,int) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_object *object, bool suspend)
{
	struct nvkm_client *client = FUNC2(object);
	const char *name[2] = { "fini", "suspend" };
	int i;
	FUNC1(object, "%s notify\n", name[suspend]);
	for (i = 0; i < FUNC0(client->notify); i++)
		FUNC3(client, i);
	return 0;
}