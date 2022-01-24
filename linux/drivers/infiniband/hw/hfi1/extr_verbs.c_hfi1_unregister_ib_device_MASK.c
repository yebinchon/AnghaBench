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
struct hfi1_ibdev {int /*<<< orphan*/  mem_timer; int /*<<< orphan*/  memwait; int /*<<< orphan*/  txwait; int /*<<< orphan*/  rdi; } ;
struct hfi1_devdata {struct hfi1_ibdev verbs_dev; } ;

/* Variables and functions */
 scalar_t__ cntr_names_initialized ; 
 int /*<<< orphan*/  cntr_names_lock ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dev_cntr_names ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * port_cntr_names ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_ibdev*) ; 

void FUNC9(struct hfi1_devdata *dd)
{
	struct hfi1_ibdev *dev = &dd->verbs_dev;

	FUNC2(dd);

	FUNC7(&dd->verbs_dev.rdi);

	if (!FUNC4(&dev->txwait))
		FUNC0(dd, "txwait list not empty!\n");
	if (!FUNC4(&dev->memwait))
		FUNC0(dd, "memwait list not empty!\n");

	FUNC1(&dev->mem_timer);
	FUNC8(dev);

	FUNC5(&cntr_names_lock);
	FUNC3(dev_cntr_names);
	FUNC3(port_cntr_names);
	dev_cntr_names = NULL;
	port_cntr_names = NULL;
	cntr_names_initialized = 0;
	FUNC6(&cntr_names_lock);
}