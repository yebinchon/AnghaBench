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
struct psmouse_smbus_removal_work {int /*<<< orphan*/  work; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct psmouse_smbus_removal_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  psmouse_smbus_remove_i2c_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	struct psmouse_smbus_removal_work *rwork;

	rwork = FUNC1(sizeof(*rwork), GFP_KERNEL);
	if (rwork) {
		FUNC0(&rwork->work, psmouse_smbus_remove_i2c_device);
		rwork->client = client;

		FUNC2(&rwork->work);
	}
}