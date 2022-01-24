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
struct TYPE_2__ {int /*<<< orphan*/  recv_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvp_host_handshake_work ; 
 int /*<<< orphan*/  kvp_poll_wrapper ; 
 TYPE_1__ kvp_transaction ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	/*
	 * If we're still negotiating with the host cancel the timeout
	 * work to not poll the channel twice.
	 */
	FUNC2("KVP: userspace daemon registered\n");
	FUNC0(&kvp_host_handshake_work);
	FUNC1(kvp_transaction.recv_channel, kvp_poll_wrapper);
}