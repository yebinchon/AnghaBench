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
struct hsi_msg {int /*<<< orphan*/  sgt; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hsi_msg*) ; 
 struct hsi_msg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

struct hsi_msg *FUNC4(unsigned int nents, gfp_t flags)
{
	struct hsi_msg *msg;
	int err;

	msg = FUNC1(sizeof(*msg), flags);
	if (!msg)
		return NULL;

	if (!nents)
		return msg;

	err = FUNC2(&msg->sgt, nents, flags);
	if (FUNC3(err)) {
		FUNC0(msg);
		msg = NULL;
	}

	return msg;
}