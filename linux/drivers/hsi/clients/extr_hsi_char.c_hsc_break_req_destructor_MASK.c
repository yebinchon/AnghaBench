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
struct hsi_msg {int /*<<< orphan*/  cl; } ;
struct hsc_client_data {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSC_RXBREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hsc_client_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_msg*) ; 

__attribute__((used)) static void FUNC3(struct hsi_msg *msg)
{
	struct hsc_client_data *cl_data = FUNC1(msg->cl);

	FUNC2(msg);
	FUNC0(HSC_RXBREAK, &cl_data->flags);
}