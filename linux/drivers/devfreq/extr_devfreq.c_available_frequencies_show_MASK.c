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
struct devfreq {int /*<<< orphan*/  lock; TYPE_1__* profile; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int max_state; int /*<<< orphan*/ * freq_table; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 struct devfreq* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d,
					  struct device_attribute *attr,
					  char *buf)
{
	struct devfreq *df = FUNC4(d);
	ssize_t count = 0;
	int i;

	FUNC0(&df->lock);

	for (i = 0; i < df->profile->max_state; i++)
		count += FUNC2(&buf[count], (PAGE_SIZE - count - 2),
				"%lu ", df->profile->freq_table[i]);

	FUNC1(&df->lock);
	/* Truncate the trailing space */
	if (count)
		count--;

	count += FUNC3(&buf[count], "\n");

	return count;
}