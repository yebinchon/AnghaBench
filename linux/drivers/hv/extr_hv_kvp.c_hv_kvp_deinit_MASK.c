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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVUTIL_DEVICE_DYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hvt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvp_host_handshake_work ; 
 int /*<<< orphan*/  kvp_sendkey_work ; 
 int /*<<< orphan*/  kvp_timeout_work ; 
 TYPE_1__ kvp_transaction ; 

void FUNC3(void)
{
	kvp_transaction.state = HVUTIL_DEVICE_DYING;
	FUNC0(&kvp_host_handshake_work);
	FUNC0(&kvp_timeout_work);
	FUNC1(&kvp_sendkey_work);
	FUNC2(hvt);
}