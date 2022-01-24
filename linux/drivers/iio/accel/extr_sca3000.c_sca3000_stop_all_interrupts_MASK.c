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
struct sca3000_state {int* rx; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCA3000_REG_INT_MASK_ADDR ; 
 int SCA3000_REG_INT_MASK_ALL_INTS ; 
 int SCA3000_REG_INT_MASK_RING_HALF ; 
 int SCA3000_REG_INT_MASK_RING_THREE_QUARTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct sca3000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct sca3000_state *st)
{
	int ret;

	FUNC0(&st->lock);
	ret = FUNC2(st, SCA3000_REG_INT_MASK_ADDR, 1);
	if (ret)
		goto error_ret;
	ret = FUNC3(st, SCA3000_REG_INT_MASK_ADDR,
				(st->rx[0] &
				 ~(SCA3000_REG_INT_MASK_RING_THREE_QUARTER |
				   SCA3000_REG_INT_MASK_RING_HALF |
				   SCA3000_REG_INT_MASK_ALL_INTS)));
error_ret:
	FUNC1(&st->lock);
	return ret;
}