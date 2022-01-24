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
typedef  int /*<<< orphan*/  u32 ;
struct ssi_protocol {int /*<<< orphan*/  cmdqueue; int /*<<< orphan*/  channel_id_cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  sgl; } ;
struct hsi_msg {int /*<<< orphan*/  link; int /*<<< orphan*/  channel; TYPE_1__ sgt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SSIP_MAX_CMDS ; 
 struct hsi_msg* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hsi_msg*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ssi_protocol*) ; 

__attribute__((used)) static int FUNC6(struct ssi_protocol *ssi)
{
	struct hsi_msg *msg;
	u32 *buf;
	unsigned int i;

	for (i = 0; i < SSIP_MAX_CMDS; i++) {
		msg = FUNC0(1, GFP_KERNEL);
		if (!msg)
			goto out;
		buf = FUNC2(sizeof(*buf), GFP_KERNEL);
		if (!buf) {
			FUNC1(msg);
			goto out;
		}
		FUNC4(msg->sgt.sgl, buf, sizeof(*buf));
		msg->channel = ssi->channel_id_cmd;
		FUNC3(&msg->link, &ssi->cmdqueue);
	}

	return 0;
out:
	FUNC5(ssi);

	return -ENOMEM;
}