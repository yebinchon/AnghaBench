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
struct hv_util_service {int /*<<< orphan*/  recv_buffer; int /*<<< orphan*/  (* util_deinit ) () ;} ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 struct hv_util_service* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hv_device *dev)
{
	struct hv_util_service *srv = FUNC0(dev);

	if (srv->util_deinit)
		srv->util_deinit();
	FUNC3(dev->channel);
	FUNC1(srv->recv_buffer);

	return 0;
}