#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fw_cdev_get_cycle_timer2 {int clk_id; int /*<<< orphan*/  cycle_timer; int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
union ioctl_arg {struct fw_cdev_get_cycle_timer2 get_cycle_timer2; } ;
typedef  int /*<<< orphan*/  u32 ;
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct fw_card {TYPE_2__* driver; } ;
struct client {TYPE_1__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_csr ) (struct fw_card*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {struct fw_card* card; } ;

/* Variables and functions */
#define  CLOCK_MONOTONIC 130 
#define  CLOCK_MONOTONIC_RAW 129 
#define  CLOCK_REALTIME 128 
 int /*<<< orphan*/  CSR_CYCLE_TIME ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct fw_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct client *client, union ioctl_arg *arg)
{
	struct fw_cdev_get_cycle_timer2 *a = &arg->get_cycle_timer2;
	struct fw_card *card = client->device->card;
	struct timespec64 ts = {0, 0};
	u32 cycle_time;
	int ret = 0;

	FUNC3();

	cycle_time = card->driver->read_csr(card, CSR_CYCLE_TIME);

	switch (a->clk_id) {
	case CLOCK_REALTIME:      FUNC1(&ts);	break;
	case CLOCK_MONOTONIC:     FUNC2(&ts);		break;
	case CLOCK_MONOTONIC_RAW: FUNC0(&ts);	break;
	default:
		ret = -EINVAL;
	}

	FUNC4();

	a->tv_sec      = ts.tv_sec;
	a->tv_nsec     = ts.tv_nsec;
	a->cycle_timer = cycle_time;

	return ret;
}