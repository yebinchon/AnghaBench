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
typedef  int u8 ;
struct kobject {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int /*<<< orphan*/  sc2vl_kobj; int /*<<< orphan*/  sl2sc_kobj; int /*<<< orphan*/  vl2mtu_kobj; int /*<<< orphan*/  pport_cc_kobj; } ;
struct hfi1_devdata {int num_pports; struct hfi1_pportdata* pport; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  cc_setting_bin_attr ; 
 int /*<<< orphan*/  cc_table_bin_attr ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int) ; 
 struct hfi1_devdata* FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  hfi1_sc2vl_ktype ; 
 int /*<<< orphan*/  hfi1_sl2sc_ktype ; 
 int /*<<< orphan*/  hfi1_vl2mtu_ktype ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct kobject*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port_cc_ktype ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct ib_device *ibdev, u8 port_num,
			   struct kobject *kobj)
{
	struct hfi1_pportdata *ppd;
	struct hfi1_devdata *dd = FUNC2(ibdev);
	int ret;

	if (!port_num || port_num > dd->num_pports) {
		FUNC0(dd,
			   "Skipping infiniband class with invalid port %u\n",
			   port_num);
		return -ENODEV;
	}
	ppd = &dd->pport[port_num - 1];

	ret = FUNC3(&ppd->sc2vl_kobj, &hfi1_sc2vl_ktype, kobj,
				   "sc2vl");
	if (ret) {
		FUNC0(dd,
			   "Skipping sc2vl sysfs info, (err %d) port %u\n",
			   ret, port_num);
		goto bail;
	}
	FUNC5(&ppd->sc2vl_kobj, KOBJ_ADD);

	ret = FUNC3(&ppd->sl2sc_kobj, &hfi1_sl2sc_ktype, kobj,
				   "sl2sc");
	if (ret) {
		FUNC0(dd,
			   "Skipping sl2sc sysfs info, (err %d) port %u\n",
			   ret, port_num);
		goto bail_sc2vl;
	}
	FUNC5(&ppd->sl2sc_kobj, KOBJ_ADD);

	ret = FUNC3(&ppd->vl2mtu_kobj, &hfi1_vl2mtu_ktype, kobj,
				   "vl2mtu");
	if (ret) {
		FUNC0(dd,
			   "Skipping vl2mtu sysfs info, (err %d) port %u\n",
			   ret, port_num);
		goto bail_sl2sc;
	}
	FUNC5(&ppd->vl2mtu_kobj, KOBJ_ADD);

	ret = FUNC3(&ppd->pport_cc_kobj, &port_cc_ktype,
				   kobj, "CCMgtA");
	if (ret) {
		FUNC0(dd,
			   "Skipping Congestion Control sysfs info, (err %d) port %u\n",
			   ret, port_num);
		goto bail_vl2mtu;
	}

	FUNC5(&ppd->pport_cc_kobj, KOBJ_ADD);

	ret = FUNC6(&ppd->pport_cc_kobj, &cc_setting_bin_attr);
	if (ret) {
		FUNC0(dd,
			   "Skipping Congestion Control setting sysfs info, (err %d) port %u\n",
			   ret, port_num);
		goto bail_cc;
	}

	ret = FUNC6(&ppd->pport_cc_kobj, &cc_table_bin_attr);
	if (ret) {
		FUNC0(dd,
			   "Skipping Congestion Control table sysfs info, (err %d) port %u\n",
			   ret, port_num);
		goto bail_cc_entry_bin;
	}

	FUNC1(dd,
		    "Congestion Control Agent enabled for port %d\n",
		    port_num);

	return 0;

bail_cc_entry_bin:
	FUNC7(&ppd->pport_cc_kobj,
			      &cc_setting_bin_attr);
bail_cc:
	FUNC4(&ppd->pport_cc_kobj);
bail_vl2mtu:
	FUNC4(&ppd->vl2mtu_kobj);
bail_sl2sc:
	FUNC4(&ppd->sl2sc_kobj);
bail_sc2vl:
	FUNC4(&ppd->sc2vl_kobj);
bail:
	return ret;
}