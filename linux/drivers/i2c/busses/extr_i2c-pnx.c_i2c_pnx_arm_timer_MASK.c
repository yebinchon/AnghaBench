#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {unsigned long expires; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct timer_list timer; } ;
struct i2c_pnx_algo_data {TYPE_2__ adapter; int /*<<< orphan*/  timeout; TYPE_1__ mif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct i2c_pnx_algo_data *alg_data)
{
	struct timer_list *timer = &alg_data->mif.timer;
	unsigned long expires = FUNC3(alg_data->timeout);

	if (expires <= 1)
		expires = 2;

	FUNC1(timer);

	FUNC2(&alg_data->adapter.dev, "Timer armed at %lu plus %lu jiffies.\n",
		jiffies, expires);

	timer->expires = jiffies + expires;

	FUNC0(timer);
}