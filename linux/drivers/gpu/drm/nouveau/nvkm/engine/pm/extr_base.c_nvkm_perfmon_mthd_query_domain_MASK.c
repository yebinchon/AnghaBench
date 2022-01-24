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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_pm {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_perfmon {struct nvkm_pm* pm; struct nvkm_object object; } ;
struct nvkm_perfdom {int /*<<< orphan*/  name; } ;
struct nvif_perfmon_query_domain_v0 {int iter; int id; int counter_nr; int /*<<< orphan*/  name; int /*<<< orphan*/  signal_nr; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_object*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int,void**,int /*<<< orphan*/ *,struct nvif_perfmon_query_domain_v0,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_perfdom*) ; 
 struct nvkm_perfdom* FUNC3 (struct nvkm_pm*,int) ; 
 int FUNC4 (struct nvkm_pm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_perfmon *perfmon,
			       void *data, u32 size)
{
	union {
		struct nvif_perfmon_query_domain_v0 v0;
	} *args = data;
	struct nvkm_object *object = &perfmon->object;
	struct nvkm_pm *pm = perfmon->pm;
	struct nvkm_perfdom *dom;
	u8 domain_nr;
	int di, ret = -ENOSYS;

	FUNC0(object, "perfmon query domain size %d\n", size);
	if (!(ret = FUNC1(ret, &data, &size, args->v0, 0, 0, false))) {
		FUNC0(object, "perfmon domain vers %d iter %02x\n",
			   args->v0.version, args->v0.iter);
		di = (args->v0.iter & 0xff) - 1;
	} else
		return ret;

	domain_nr = FUNC4(pm);
	if (di >= (int)domain_nr)
		return -EINVAL;

	if (di >= 0) {
		dom = FUNC3(pm, di);
		if (dom == NULL)
			return -EINVAL;

		args->v0.id         = di;
		args->v0.signal_nr  = FUNC2(dom);
		FUNC5(args->v0.name, dom->name, sizeof(args->v0.name) - 1);

		/* Currently only global counters (PCOUNTER) are implemented
		 * but this will be different for local counters (MP). */
		args->v0.counter_nr = 4;
	}

	if (++di < domain_nr) {
		args->v0.iter = ++di;
		return 0;
	}

	args->v0.iter = 0xff;
	return 0;
}