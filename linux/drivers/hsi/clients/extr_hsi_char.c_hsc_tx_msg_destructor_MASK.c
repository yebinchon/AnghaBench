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
struct hsi_msg {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSI_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hsi_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hsi_msg*) ; 

__attribute__((used)) static void FUNC2(struct hsi_msg *msg)
{
	msg->status = HSI_STATUS_ERROR;
	FUNC0(msg, 0);
	FUNC1(msg);
}