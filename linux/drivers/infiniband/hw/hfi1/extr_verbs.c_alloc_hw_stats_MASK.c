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
typedef  int /*<<< orphan*/  u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_devdata {int /*<<< orphan*/  portcntrnameslen; int /*<<< orphan*/  portcntrnames; int /*<<< orphan*/  cntrnameslen; int /*<<< orphan*/  cntrnames; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_HW_STATS_DEFAULT_LIFESPAN ; 
 int cntr_names_initialized ; 
 int /*<<< orphan*/  cntr_names_lock ; 
 struct hfi1_devdata* FUNC0 (struct ib_device*) ; 
 int /*<<< orphan*/ * dev_cntr_names ; 
 int /*<<< orphan*/ * driver_cntr_names ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int num_dev_cntrs ; 
 int num_driver_cntrs ; 
 int num_port_cntrs ; 
 int /*<<< orphan*/ * port_cntr_names ; 
 struct rdma_hw_stats* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rdma_hw_stats *FUNC6(struct ib_device *ibdev,
					    u8 port_num)
{
	int i, err;

	FUNC3(&cntr_names_lock);
	if (!cntr_names_initialized) {
		struct hfi1_devdata *dd = FUNC0(ibdev);

		err = FUNC1(dd->cntrnames,
				      dd->cntrnameslen,
				      num_driver_cntrs,
				      &num_dev_cntrs,
				      &dev_cntr_names);
		if (err) {
			FUNC4(&cntr_names_lock);
			return NULL;
		}

		for (i = 0; i < num_driver_cntrs; i++)
			dev_cntr_names[num_dev_cntrs + i] =
				driver_cntr_names[i];

		err = FUNC1(dd->portcntrnames,
				      dd->portcntrnameslen,
				      0,
				      &num_port_cntrs,
				      &port_cntr_names);
		if (err) {
			FUNC2(dev_cntr_names);
			dev_cntr_names = NULL;
			FUNC4(&cntr_names_lock);
			return NULL;
		}
		cntr_names_initialized = 1;
	}
	FUNC4(&cntr_names_lock);

	if (!port_num)
		return FUNC5(
				dev_cntr_names,
				num_dev_cntrs + num_driver_cntrs,
				RDMA_HW_STATS_DEFAULT_LIFESPAN);
	else
		return FUNC5(
				port_cntr_names,
				num_port_cntrs,
				RDMA_HW_STATS_DEFAULT_LIFESPAN);
}