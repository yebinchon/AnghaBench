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
struct ishtp_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC1 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_cl*) ; 

__attribute__((used)) static void FUNC3(struct ishtp_cl *hid_ishtp_cl)
{
	FUNC2(hid_ishtp_cl);
	FUNC0(hid_ishtp_cl);

	/* disband and free all Tx and Rx client-level rings */
	FUNC1(hid_ishtp_cl);
}