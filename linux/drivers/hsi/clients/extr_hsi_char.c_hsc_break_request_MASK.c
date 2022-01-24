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
struct hsi_msg {int break_frame; int /*<<< orphan*/  (* destructor ) (struct hsi_msg*) ;int /*<<< orphan*/  complete; } ;
struct hsi_client {int dummy; } ;
struct hsc_client_data {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HSC_RXBREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hsc_break_received ; 
 int /*<<< orphan*/  FUNC1 (struct hsi_msg*) ; 
 struct hsi_msg* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hsi_client*,struct hsi_msg*) ; 
 struct hsc_client_data* FUNC4 (struct hsi_client*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hsi_client *cl)
{
	struct hsc_client_data *cl_data = FUNC4(cl);
	struct hsi_msg *msg;
	int ret;

	if (FUNC5(HSC_RXBREAK, &cl_data->flags))
		return -EBUSY;

	msg = FUNC2(0, GFP_KERNEL);
	if (!msg) {
		FUNC0(HSC_RXBREAK, &cl_data->flags);
		return -ENOMEM;
	}
	msg->break_frame = 1;
	msg->complete = hsc_break_received;
	msg->destructor = hsc_break_req_destructor;
	ret = FUNC3(cl, msg);
	if (ret < 0)
		FUNC1(msg);

	return ret;
}