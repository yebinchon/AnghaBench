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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct hns_roce_v2_cmq_ring {int next_to_use; int desc_num; int /*<<< orphan*/  lock; struct hns_roce_cmq_desc* desc; } ;
struct TYPE_2__ {scalar_t__ tx_timeout; scalar_t__ last_status; struct hns_roce_v2_cmq_ring csq; } ;
struct hns_roce_v2_priv {TYPE_1__ cmq; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; scalar_t__ priv; } ;
struct hns_roce_cmq_desc {int /*<<< orphan*/  retval; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 scalar_t__ CMD_EXEC_SUCCESS ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EIO ; 
 int HNS_ROCE_CMD_FLAG_NO_INTR ; 
 int /*<<< orphan*/  ROCEE_TX_CMQ_TAIL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct hns_roce_dev*) ; 
 scalar_t__ FUNC3 (struct hns_roce_dev*) ; 
 int FUNC4 (struct hns_roce_v2_cmq_ring*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct hns_roce_dev *hr_dev,
			       struct hns_roce_cmq_desc *desc, int num)
{
	struct hns_roce_v2_priv *priv = (struct hns_roce_v2_priv *)hr_dev->priv;
	struct hns_roce_v2_cmq_ring *csq = &priv->cmq.csq;
	struct hns_roce_cmq_desc *desc_to_use;
	bool complete = false;
	u32 timeout = 0;
	int handle = 0;
	u16 desc_ret;
	int ret = 0;
	int ntc;

	FUNC7(&csq->lock);

	if (num > FUNC4(csq)) {
		FUNC8(&csq->lock);
		return -EBUSY;
	}

	/*
	 * Record the location of desc in the cmq for this time
	 * which will be use for hardware to write back
	 */
	ntc = csq->next_to_use;

	while (handle < num) {
		desc_to_use = &csq->desc[csq->next_to_use];
		*desc_to_use = desc[handle];
		FUNC0(hr_dev->dev, "set cmq desc:\n");
		csq->next_to_use++;
		if (csq->next_to_use == csq->desc_num)
			csq->next_to_use = 0;
		handle++;
	}

	/* Write to hardware */
	FUNC6(hr_dev, ROCEE_TX_CMQ_TAIL_REG, csq->next_to_use);

	/*
	 * If the command is sync, wait for the firmware to write back,
	 * if multi descriptors to be sent, use the first one to check
	 */
	if (FUNC5(desc->flag) & HNS_ROCE_CMD_FLAG_NO_INTR) {
		do {
			if (FUNC3(hr_dev))
				break;
			FUNC9(1);
			timeout++;
		} while (timeout < priv->cmq.tx_timeout);
	}

	if (FUNC3(hr_dev)) {
		complete = true;
		handle = 0;
		while (handle < num) {
			/* get the result of hardware write back */
			desc_to_use = &csq->desc[ntc];
			desc[handle] = *desc_to_use;
			FUNC0(hr_dev->dev, "Get cmq desc:\n");
			desc_ret = FUNC5(desc[handle].retval);
			if (desc_ret == CMD_EXEC_SUCCESS)
				ret = 0;
			else
				ret = -EIO;
			priv->cmq.last_status = desc_ret;
			ntc++;
			handle++;
			if (ntc == csq->desc_num)
				ntc = 0;
		}
	}

	if (!complete)
		ret = -EAGAIN;

	/* clean the command send queue */
	handle = FUNC2(hr_dev);
	if (handle != num)
		FUNC1(hr_dev->dev, "Cleaned %d, need to clean %d\n",
			 handle, num);

	FUNC8(&csq->lock);

	return ret;
}