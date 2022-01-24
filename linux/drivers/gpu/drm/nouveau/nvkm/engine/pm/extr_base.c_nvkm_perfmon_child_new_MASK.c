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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_perfmon {int dummy; } ;
struct nvkm_oclass {int /*<<< orphan*/  parent; } ;
struct nvkm_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvkm_perfmon*,struct nvkm_oclass const*,void*,int /*<<< orphan*/ ,struct nvkm_object**) ; 
 struct nvkm_perfmon* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const struct nvkm_oclass *oclass, void *data, u32 size,
		       struct nvkm_object **pobject)
{
	struct nvkm_perfmon *perfmon = FUNC1(oclass->parent);
	return FUNC0(perfmon, oclass, data, size, pobject);
}