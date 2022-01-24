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
struct adf_etr_data {TYPE_1__* banks; } ;
struct adf_accel_dev {struct adf_etr_data* transport; } ;
struct TYPE_2__ {int /*<<< orphan*/  resp_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct adf_accel_dev *accel_dev)
{
	struct adf_etr_data *priv_data = accel_dev->transport;

	FUNC0(&priv_data->banks[0].resp_handler);
	FUNC1(&priv_data->banks[0].resp_handler);
}