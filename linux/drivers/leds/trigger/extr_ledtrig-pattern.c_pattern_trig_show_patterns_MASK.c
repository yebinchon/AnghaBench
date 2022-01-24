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
struct pattern_trig_data {int npatterns; int is_hw_pattern; int /*<<< orphan*/  lock; TYPE_1__* patterns; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  delta_t; int /*<<< orphan*/  brightness; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct pattern_trig_data *data,
					  char *buf, bool hw_pattern)
{
	ssize_t count = 0;
	int i;

	FUNC0(&data->lock);

	if (!data->npatterns || (data->is_hw_pattern ^ hw_pattern))
		goto out;

	for (i = 0; i < data->npatterns; i++) {
		count += FUNC2(buf + count, PAGE_SIZE - count,
				   "%d %u ",
				   data->patterns[i].brightness,
				   data->patterns[i].delta_t);
	}

	buf[count - 1] = '\n';

out:
	FUNC1(&data->lock);
	return count;
}