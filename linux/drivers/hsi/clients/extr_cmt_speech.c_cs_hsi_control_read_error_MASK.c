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
struct hsi_msg {int dummy; } ;
struct cs_hsi_iface {int /*<<< orphan*/  control_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*,struct hsi_msg*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_msg*) ; 

__attribute__((used)) static void FUNC4(struct cs_hsi_iface *hi,
							struct hsi_msg *msg)
{
	FUNC1(hi, msg, "control read", &hi->control_state);
	FUNC3(msg);
	FUNC2(&hi->control_state);
	FUNC0(hi);
}