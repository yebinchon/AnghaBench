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
struct hfi1_pportdata {int /*<<< orphan*/  sc2vl_kobj; int /*<<< orphan*/  sl2sc_kobj; int /*<<< orphan*/  vl2mtu_kobj; int /*<<< orphan*/  pport_cc_kobj; } ;
struct hfi1_devdata {int num_pports; struct hfi1_pportdata* pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  cc_setting_bin_attr ; 
 int /*<<< orphan*/  cc_table_bin_attr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct hfi1_devdata *dd)
{
	struct hfi1_pportdata *ppd;
	int i;

	for (i = 0; i < dd->num_pports; i++) {
		ppd = &dd->pport[i];

		FUNC1(&ppd->pport_cc_kobj,
				      &cc_setting_bin_attr);
		FUNC1(&ppd->pport_cc_kobj,
				      &cc_table_bin_attr);
		FUNC0(&ppd->pport_cc_kobj);
		FUNC0(&ppd->vl2mtu_kobj);
		FUNC0(&ppd->sl2sc_kobj);
		FUNC0(&ppd->sc2vl_kobj);
	}
}