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
struct hsi_msg {int break_frame; int /*<<< orphan*/  (* destructor ) (struct hsi_msg*) ;int /*<<< orphan*/  (* complete ) (struct hsi_msg*) ;} ;
struct hsi_client {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct hsi_msg* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hsi_client*,struct hsi_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct hsi_msg*) ; 

__attribute__((used)) static int FUNC3(struct hsi_client *cl)
{
	struct hsi_msg *msg;
	int ret;

	msg = FUNC0(0, GFP_ATOMIC);
	if (!msg)
		return -ENOMEM;
	msg->break_frame = 1;
	msg->complete = hsi_free_msg;
	msg->destructor = hsi_free_msg;
	ret = FUNC1(cl, msg);
	if (ret < 0)
		FUNC2(msg);

	return ret;
}