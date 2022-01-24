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
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;
struct hns_roce_dev {TYPE_1__ cmd; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  buf; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct hns_roce_cmd_mailbox* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_cmd_mailbox*) ; 
 struct hns_roce_cmd_mailbox* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct hns_roce_cmd_mailbox
	*FUNC4(struct hns_roce_dev *hr_dev)
{
	struct hns_roce_cmd_mailbox *mailbox;

	mailbox = FUNC3(sizeof(*mailbox), GFP_KERNEL);
	if (!mailbox)
		return FUNC0(-ENOMEM);

	mailbox->buf = FUNC1(hr_dev->cmd.pool, GFP_KERNEL,
				      &mailbox->dma);
	if (!mailbox->buf) {
		FUNC2(mailbox);
		return FUNC0(-ENOMEM);
	}

	return mailbox;
}