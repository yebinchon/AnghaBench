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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {scalar_t__ previous_freq; int* trans_table; int total_trans; int /*<<< orphan*/ * time_in_state; TYPE_1__* profile; int /*<<< orphan*/  stop_polling; } ;
typedef  int ssize_t ;
struct TYPE_2__ {unsigned int max_state; int* freq_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct devfreq*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,...) ; 
 struct devfreq* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	struct devfreq *devfreq = FUNC3(dev);
	ssize_t len;
	int i, j;
	unsigned int max_state = devfreq->profile->max_state;

	if (!devfreq->stop_polling &&
			FUNC0(devfreq, devfreq->previous_freq))
		return 0;
	if (max_state == 0)
		return FUNC2(buf, "Not Supported.\n");

	len = FUNC2(buf, "     From  :   To\n");
	len += FUNC2(buf + len, "           :");
	for (i = 0; i < max_state; i++)
		len += FUNC2(buf + len, "%10lu",
				devfreq->profile->freq_table[i]);

	len += FUNC2(buf + len, "   time(ms)\n");

	for (i = 0; i < max_state; i++) {
		if (devfreq->profile->freq_table[i]
					== devfreq->previous_freq) {
			len += FUNC2(buf + len, "*");
		} else {
			len += FUNC2(buf + len, " ");
		}
		len += FUNC2(buf + len, "%10lu:",
				devfreq->profile->freq_table[i]);
		for (j = 0; j < max_state; j++)
			len += FUNC2(buf + len, "%10u",
				devfreq->trans_table[(i * max_state) + j]);
		len += FUNC2(buf + len, "%10u\n",
			FUNC1(devfreq->time_in_state[i]));
	}

	len += FUNC2(buf + len, "Total transition : %u\n",
					devfreq->total_trans);
	return len;
}