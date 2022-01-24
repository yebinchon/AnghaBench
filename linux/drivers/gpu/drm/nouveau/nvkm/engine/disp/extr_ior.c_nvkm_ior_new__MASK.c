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
struct nvkm_ior_func {int dummy; } ;
struct nvkm_ior {int type; int id; int /*<<< orphan*/  head; int /*<<< orphan*/  name; struct nvkm_disp* disp; struct nvkm_ior_func const* func; } ;
struct nvkm_disp {int /*<<< orphan*/  ior; } ;
typedef  enum nvkm_ior_type { ____Placeholder_nvkm_ior_type } nvkm_ior_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_ior*,char*) ; 
 struct nvkm_ior* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char** nvkm_ior_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

int
FUNC4(const struct nvkm_ior_func *func, struct nvkm_disp *disp,
	      enum nvkm_ior_type type, int id)
{
	struct nvkm_ior *ior;
	if (!(ior = FUNC1(sizeof(*ior), GFP_KERNEL)))
		return -ENOMEM;
	ior->func = func;
	ior->disp = disp;
	ior->type = type;
	ior->id = id;
	FUNC3(ior->name, sizeof(ior->name), "%s-%d",
		 nvkm_ior_name[ior->type], ior->id);
	FUNC2(&ior->head, &disp->ior);
	FUNC0(ior, "ctor");
	return 0;
}