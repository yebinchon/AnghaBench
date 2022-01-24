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
struct qib_devdata {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int*) ; 
 struct qib_devdata* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, int *unit)
{
	int ret = 0, devmax, npresent, nup, ndev;

	*unit = -1;

	devmax = FUNC2(&npresent, &nup);
	if (!npresent) {
		ret = -ENXIO;
		goto done;
	}
	if (!nup) {
		ret = -ENETDOWN;
		goto done;
	}
	for (ndev = 0; ndev < devmax; ndev++) {
		struct qib_devdata *dd = FUNC3(ndev);

		if (dd) {
			if (FUNC1(dd->pcidev->bus) < 0) {
				ret = -EINVAL;
				goto done;
			}
			if (FUNC0(cpu) ==
				FUNC1(dd->pcidev->bus)) {
				*unit = ndev;
				goto done;
			}
		}
	}
done:
	return ret;
}