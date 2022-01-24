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
struct psmouse {int dummy; } ;
struct elantech_device_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct psmouse*,struct elantech_device_info*) ; 
 int FUNC1 (struct psmouse*,struct elantech_device_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*) ; 

int FUNC3(struct psmouse *psmouse)
{
	struct elantech_device_info info;
	int error = -EINVAL;

	FUNC2(psmouse);

	error = FUNC0(psmouse, &info);
	if (error)
		goto init_fail;

	error = FUNC1(psmouse, &info);
	if (error)
		goto init_fail;

	return 0;
 init_fail:
	FUNC2(psmouse);
	return error;
}