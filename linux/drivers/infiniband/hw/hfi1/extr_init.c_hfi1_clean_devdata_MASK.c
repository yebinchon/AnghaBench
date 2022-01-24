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
struct TYPE_2__ {int /*<<< orphan*/  rdi; } ;
struct hfi1_devdata {TYPE_1__ verbs_dev; int /*<<< orphan*/  num_sdma; int /*<<< orphan*/ * comp_vect; int /*<<< orphan*/ * tx_opstats; int /*<<< orphan*/ * send_schedule; int /*<<< orphan*/ * rcv_limit; int /*<<< orphan*/ * int_counter; int /*<<< orphan*/  unit; } ;
struct hfi1_asic_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,struct hfi1_asic_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  hfi1_dev_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct hfi1_asic_data* FUNC6 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct hfi1_devdata *dd)
{
	struct hfi1_asic_data *ad;
	unsigned long flags;

	FUNC9(&hfi1_dev_table, flags);
	FUNC0(&hfi1_dev_table, dd->unit);
	ad = FUNC6(dd);
	FUNC10(&hfi1_dev_table, flags);

	FUNC1(dd, ad);
	FUNC3(dd);
	FUNC5(); /* wait for rcu callbacks to complete */
	FUNC2(dd->int_counter);
	FUNC2(dd->rcv_limit);
	FUNC2(dd->send_schedule);
	FUNC2(dd->tx_opstats);
	dd->int_counter   = NULL;
	dd->rcv_limit     = NULL;
	dd->send_schedule = NULL;
	dd->tx_opstats    = NULL;
	FUNC4(dd->comp_vect);
	dd->comp_vect = NULL;
	FUNC8(dd, dd->num_sdma);
	FUNC7(&dd->verbs_dev.rdi);
}