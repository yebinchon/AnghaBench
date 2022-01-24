#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  query_base_addr; } ;
struct rmi_function {TYPE_1__ fd; TYPE_2__* rmi_dev; int /*<<< orphan*/  dev; } ;
struct rmi_driver {int /*<<< orphan*/  (* set_irq_bits ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* clear_irq_bits ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct rmi_2d_sensor {int /*<<< orphan*/  report_rel; int /*<<< orphan*/  report_abs; } ;
struct f11_data {int /*<<< orphan*/  dev_controls; int /*<<< orphan*/  sens_query; int /*<<< orphan*/  rel_mask; int /*<<< orphan*/  abs_mask; struct rmi_2d_sensor sensor; } ;
struct TYPE_7__ {struct rmi_driver* driver; } ;

/* Variables and functions */
 struct f11_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rmi_function*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rmi_function *fn)
{
	struct f11_data *f11 = FUNC0(&fn->dev);
	struct rmi_driver *drv = fn->rmi_dev->driver;
	struct rmi_2d_sensor *sensor = &f11->sensor;
	int rc;

	if (!sensor->report_abs)
		drv->clear_irq_bits(fn->rmi_dev, f11->abs_mask);
	else
		drv->set_irq_bits(fn->rmi_dev, f11->abs_mask);

	if (!sensor->report_rel)
		drv->clear_irq_bits(fn->rmi_dev, f11->rel_mask);
	else
		drv->set_irq_bits(fn->rmi_dev, f11->rel_mask);

	rc = FUNC1(fn, &f11->sens_query,
			   &f11->dev_controls, fn->fd.query_base_addr);
	if (rc < 0)
		return rc;

	return 0;
}