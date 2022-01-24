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
struct nx842_devdata {TYPE_1__* counters; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  atomic64_t ;
struct TYPE_2__ {int /*<<< orphan*/ * decomp_times; int /*<<< orphan*/ * comp_times; } ;

/* Variables and functions */
 int NX842_HIST_SLOTS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct device_attribute dev_attr_comp_times ; 
 struct device_attribute dev_attr_decomp_times ; 
 int /*<<< orphan*/  devdata ; 
 struct nx842_devdata* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*,int,char*,int,int,...) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf) {
	char *p = buf;
	struct nx842_devdata *local_devdata;
	atomic64_t *times;
	int bytes_remain = PAGE_SIZE;
	int bytes;
	int i;

	FUNC2();
	local_devdata = FUNC1(devdata);
	if (!local_devdata) {
		FUNC3();
		return 0;
	}

	if (attr == &dev_attr_comp_times)
		times = local_devdata->counters->comp_times;
	else if (attr == &dev_attr_decomp_times)
		times = local_devdata->counters->decomp_times;
	else {
		FUNC3();
		return 0;
	}

	for (i = 0; i < (NX842_HIST_SLOTS - 2); i++) {
		bytes = FUNC4(p, bytes_remain, "%u-%uus:\t%lld\n",
			       i ? (2<<(i-1)) : 0, (2<<i)-1,
			       FUNC0(&times[i]));
		bytes_remain -= bytes;
		p += bytes;
	}
	/* The last bucket holds everything over
	 * 2<<(NX842_HIST_SLOTS - 2) us */
	bytes = FUNC4(p, bytes_remain, "%uus - :\t%lld\n",
			2<<(NX842_HIST_SLOTS - 2),
			FUNC0(&times[(NX842_HIST_SLOTS - 1)]));
	p += bytes;

	FUNC3();
	return p - buf;
}