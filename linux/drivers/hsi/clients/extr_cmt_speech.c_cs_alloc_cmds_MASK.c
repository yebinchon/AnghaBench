#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  sgl; } ;
struct hsi_msg {int /*<<< orphan*/  link; struct cs_hsi_iface* context; int /*<<< orphan*/  channel; TYPE_1__ sgt; } ;
struct cs_hsi_iface {int /*<<< orphan*/  cmdqueue; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel_id_cmd; } ;

/* Variables and functions */
 unsigned int CS_MAX_CMDS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ cs_char_data ; 
 int /*<<< orphan*/  FUNC1 (struct cs_hsi_iface*) ; 
 struct hsi_msg* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hsi_msg*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct cs_hsi_iface *hi)
{
	struct hsi_msg *msg;
	u32 *buf;
	unsigned int i;

	FUNC0(&hi->cmdqueue);

	for (i = 0; i < CS_MAX_CMDS; i++) {
		msg = FUNC2(1, GFP_KERNEL);
		if (!msg)
			goto out;
		buf = FUNC4(sizeof(*buf), GFP_KERNEL);
		if (!buf) {
			FUNC3(msg);
			goto out;
		}
		FUNC6(msg->sgt.sgl, buf, sizeof(*buf));
		msg->channel = cs_char_data.channel_id_cmd;
		msg->context = hi;
		FUNC5(&msg->link, &hi->cmdqueue);
	}

	return 0;

out:
	FUNC1(hi);
	return -ENOMEM;
}