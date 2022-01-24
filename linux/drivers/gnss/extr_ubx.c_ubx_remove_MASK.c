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
struct ubx_data {scalar_t__ v_bckp; } ;
struct serdev_device {int dummy; } ;
struct gnss_serial {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gnss_serial*) ; 
 int /*<<< orphan*/  FUNC1 (struct gnss_serial*) ; 
 struct ubx_data* FUNC2 (struct gnss_serial*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct gnss_serial* FUNC4 (struct serdev_device*) ; 

__attribute__((used)) static void FUNC5(struct serdev_device *serdev)
{
	struct gnss_serial *gserial = FUNC4(serdev);
	struct ubx_data *data = FUNC2(gserial);

	FUNC0(gserial);
	if (data->v_bckp)
		FUNC3(data->v_bckp);
	FUNC1(gserial);
}