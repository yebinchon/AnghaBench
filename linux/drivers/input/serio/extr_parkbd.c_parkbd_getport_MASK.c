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
struct parport {int dummy; } ;
struct pardev_cb {int /*<<< orphan*/  flags; int /*<<< orphan*/  irq_func; } ;
typedef  int /*<<< orphan*/  parkbd_parport_cb ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  PARPORT_FLAG_EXCL ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct pardev_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  parkbd_dev ; 
 int /*<<< orphan*/  parkbd_interrupt ; 
 int /*<<< orphan*/  parkbd_start ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,char*,struct pardev_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct parport *pp)
{
	struct pardev_cb parkbd_parport_cb;

	FUNC0(&parkbd_parport_cb, 0, sizeof(parkbd_parport_cb));
	parkbd_parport_cb.irq_func = parkbd_interrupt;
	parkbd_parport_cb.flags = PARPORT_FLAG_EXCL;

	parkbd_dev = FUNC2(pp, "parkbd",
						&parkbd_parport_cb, 0);

	if (!parkbd_dev)
		return -ENODEV;

	if (FUNC1(parkbd_dev)) {
		FUNC3(parkbd_dev);
		return -EBUSY;
	}

	parkbd_start = jiffies;

	return 0;
}