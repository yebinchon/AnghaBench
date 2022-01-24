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
struct adf_etr_data {struct adf_etr_data* banks; int /*<<< orphan*/  debug; } ;
struct adf_accel_dev {struct adf_etr_data* transport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adf_accel_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adf_etr_data*) ; 

void FUNC3(struct adf_accel_dev *accel_dev)
{
	struct adf_etr_data *etr_data = accel_dev->transport;

	if (etr_data) {
		FUNC0(accel_dev);
		FUNC1(etr_data->debug);
		FUNC2(etr_data->banks);
		FUNC2(etr_data);
		accel_dev->transport = NULL;
	}
}