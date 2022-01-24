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
struct TYPE_2__ {int /*<<< orphan*/  sk4; int /*<<< orphan*/  sk6; } ;

/* Variables and functions */
 TYPE_1__ recv_sockets ; 
 int /*<<< orphan*/  rxe_net_notifier ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	FUNC0(recv_sockets.sk6);
	FUNC0(recv_sockets.sk4);
	FUNC1(&rxe_net_notifier);
}