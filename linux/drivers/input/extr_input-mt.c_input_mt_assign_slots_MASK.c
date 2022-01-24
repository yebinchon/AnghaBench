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
struct input_mt_pos {int dummy; } ;
struct input_mt {int num_slots; int /*<<< orphan*/  red; } ;
struct input_dev {struct input_mt* mt; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC1 (struct input_mt*,struct input_mt_pos const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_mt*,int*,int) ; 

int FUNC3(struct input_dev *dev, int *slots,
			  const struct input_mt_pos *pos, int num_pos,
			  int dmax)
{
	struct input_mt *mt = dev->mt;
	int mu = 2 * dmax * dmax;
	int nrc;

	if (!mt || !mt->red)
		return -ENXIO;
	if (num_pos > mt->num_slots)
		return -EINVAL;
	if (num_pos < 1)
		return 0;

	nrc = FUNC1(mt, pos, num_pos, mu);
	FUNC0(mt->red, num_pos, nrc / num_pos, nrc, mu);
	FUNC2(mt, slots, num_pos);

	return 0;
}