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
struct nvkm_gr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  disable; } ;
struct gf100_gr {TYPE_1__ fecs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct gf100_gr* FUNC1 (struct nvkm_gr*) ; 
 int FUNC2 (struct gf100_gr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct nvkm_gr *base)
{
	struct gf100_gr *gr = FUNC1(base);
	int ret = 0;

	FUNC3(&gr->fecs.mutex);
	if (!--gr->fecs.disable) {
		if (FUNC0(ret = FUNC2(gr, 0x39)))
			gr->fecs.disable++;
	}
	FUNC4(&gr->fecs.mutex);
	return ret;
}