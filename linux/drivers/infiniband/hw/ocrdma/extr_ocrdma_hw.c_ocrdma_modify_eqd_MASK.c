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
struct ocrdma_eq {int dummy; } ;
struct ocrdma_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_dev*,struct ocrdma_eq*,int) ; 

__attribute__((used)) static int FUNC2(struct ocrdma_dev *dev, struct ocrdma_eq *eq,
			     int num)
{
	int num_eqs, i = 0;
	if (num > 8) {
		while (num) {
			num_eqs = FUNC0(num, 8);
			FUNC1(dev, &eq[i], num_eqs);
			i += num_eqs;
			num -= num_eqs;
		}
	} else {
		FUNC1(dev, eq, num);
	}
	return 0;
}