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
typedef  int u64 ;
struct mthca_mtt {int first_seg; } ;
struct mthca_mailbox {scalar_t__* buf; } ;
struct TYPE_4__ {int mtt_seg_size; } ;
struct TYPE_3__ {int mtt_base; } ;
struct mthca_dev {TYPE_2__ limits; TYPE_1__ mr_table; } ;
typedef  scalar_t__ __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int MTHCA_MAILBOX_SIZE ; 
 int MTHCA_MTT_FLAG_PRESENT ; 
 int FUNC1 (struct mthca_mailbox*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct mthca_dev*,struct mthca_mailbox*,int) ; 
 struct mthca_mailbox* FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct mthca_dev *dev, struct mthca_mtt *mtt,
			     int start_index, u64 *buffer_list, int list_len)
{
	struct mthca_mailbox *mailbox;
	__be64 *mtt_entry;
	int err = 0;
	int i;

	mailbox = FUNC4(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	mtt_entry = mailbox->buf;

	while (list_len > 0) {
		mtt_entry[0] = FUNC2(dev->mr_table.mtt_base +
					   mtt->first_seg * dev->limits.mtt_seg_size +
					   start_index * 8);
		mtt_entry[1] = 0;
		for (i = 0; i < list_len && i < MTHCA_MAILBOX_SIZE / 8 - 2; ++i)
			mtt_entry[i + 2] = FUNC2(buffer_list[i] |
						       MTHCA_MTT_FLAG_PRESENT);

		/*
		 * If we have an odd number of entries to write, add
		 * one more dummy entry for firmware efficiency.
		 */
		if (i & 1)
			mtt_entry[i + 2] = 0;

		err = FUNC3(dev, mailbox, (i + 1) & ~1);
		if (err) {
			FUNC6(dev, "WRITE_MTT failed (%d)\n", err);
			goto out;
		}

		list_len    -= i;
		start_index += i;
		buffer_list += i;
	}

out:
	FUNC5(dev, mailbox);
	return err;
}