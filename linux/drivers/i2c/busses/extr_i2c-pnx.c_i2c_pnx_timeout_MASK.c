#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  complete; int /*<<< orphan*/  ret; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct i2c_pnx_algo_data {TYPE_1__ mif; TYPE_2__ adapter; } ;
struct TYPE_6__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_pnx_algo_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_pnx_algo_data*) ; 
 struct i2c_pnx_algo_data* alg_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct i2c_pnx_algo_data* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int mcntrl_afie ; 
 int mcntrl_drmie ; 
 int mcntrl_naie ; 
 int mcntrl_reset ; 
 int mcntrl_rffie ; 
 TYPE_3__ mif ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_pnx_algo_data*) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct i2c_pnx_algo_data *alg_data = FUNC4(alg_data, t, mif.timer);
	u32 ctl;

	FUNC3(&alg_data->adapter.dev,
		"Master timed out. stat = %04x, cntrl = %04x. Resetting master...\n",
		FUNC5(FUNC1(alg_data)),
		FUNC5(FUNC0(alg_data)));

	/* Reset master and disable interrupts */
	ctl = FUNC5(FUNC0(alg_data));
	ctl &= ~(mcntrl_afie | mcntrl_naie | mcntrl_rffie | mcntrl_drmie);
	FUNC6(ctl, FUNC0(alg_data));

	ctl |= mcntrl_reset;
	FUNC6(ctl, FUNC0(alg_data));
	FUNC7(alg_data);
	alg_data->mif.ret = -EIO;
	FUNC2(&alg_data->mif.complete);
}