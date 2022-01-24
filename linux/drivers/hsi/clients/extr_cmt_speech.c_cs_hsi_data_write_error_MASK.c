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
struct cs_hsi_iface {int /*<<< orphan*/  data_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs_hsi_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*,struct hsi_msg*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cs_hsi_iface *hi,
							struct hsi_msg *msg)
{
	FUNC1(hi, msg, "data write", &hi->data_state);
	FUNC2(&hi->data_state);
	FUNC0(hi);
}