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
typedef  int /*<<< orphan*/  u64 ;
struct tc_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int,int,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct tc_data *tc, unsigned int addr,
				  unsigned int cond_mask,
				  unsigned int cond_value,
				  unsigned long sleep_us, u64 timeout_us)
{
	unsigned int val;

	return FUNC0(tc->regmap, addr, val,
					(val & cond_mask) == cond_value,
					sleep_us, timeout_us);
}