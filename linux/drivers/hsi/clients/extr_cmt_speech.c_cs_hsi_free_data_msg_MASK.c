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
struct hsi_msg {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ HSI_STATUS_COMPLETED ; 
 scalar_t__ HSI_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hsi_msg*) ; 

__attribute__((used)) static void FUNC2(struct hsi_msg *msg)
{
	FUNC0(msg->status != HSI_STATUS_COMPLETED &&
					msg->status != HSI_STATUS_ERROR);
	FUNC1(msg);
}