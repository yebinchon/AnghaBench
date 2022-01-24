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
typedef  int /*<<< orphan*/  u8 ;
struct nvkm_volt {TYPE_1__* func; } ;
struct TYPE_2__ {int (* set_id ) (struct nvkm_volt*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (struct nvkm_volt*) ; 
 int FUNC2 (struct nvkm_volt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvkm_volt*,int) ; 
 int FUNC4 (struct nvkm_volt*,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct nvkm_volt *volt, u8 id, u8 min_id, u8 temp,
		 int condition)
{
	int ret;

	if (volt->func->set_id)
		return volt->func->set_id(volt, id, condition);

	ret = FUNC2(volt, id, temp);
	if (ret >= 0) {
		int prev = FUNC1(volt);
		if (!condition || prev < 0 ||
		    (condition < 0 && ret < prev) ||
		    (condition > 0 && ret > prev)) {
			int min = FUNC2(volt, min_id, temp);
			if (min >= 0)
				ret = FUNC0(min, ret);
			ret = FUNC3(volt, ret);
		} else {
			ret = 0;
		}
	}
	return ret;
}