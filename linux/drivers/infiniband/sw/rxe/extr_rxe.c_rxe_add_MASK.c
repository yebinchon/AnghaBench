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
struct rxe_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rxe_dev*) ; 
 int FUNC1 (struct rxe_dev*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_dev*,unsigned int) ; 

int FUNC3(struct rxe_dev *rxe, unsigned int mtu, const char *ibdev_name)
{
	int err;

	err = FUNC0(rxe);
	if (err)
		return err;

	FUNC2(rxe, mtu);

	return FUNC1(rxe, ibdev_name);
}