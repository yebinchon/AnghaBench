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
struct work_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  HV_E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvp_poll_wrapper ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ kvp_transaction ; 

__attribute__((used)) static void FUNC2(struct work_struct *dummy)
{
	/*
	 * If the timer fires, the user-mode component has not responded;
	 * process the pending transaction.
	 */
	FUNC1(NULL, HV_E_FAIL);

	FUNC0(kvp_transaction.recv_channel, kvp_poll_wrapper);
}