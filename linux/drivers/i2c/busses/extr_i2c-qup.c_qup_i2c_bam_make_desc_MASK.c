#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_10__ {int count; int pos; int data_len; } ;
struct TYPE_9__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/ * sg; } ;
struct TYPE_8__ {int /*<<< orphan*/ * start; } ;
struct TYPE_6__ {int /*<<< orphan*/ * start; } ;
struct TYPE_7__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/ * sg; TYPE_1__ tag; } ;
struct qup_i2c_dev {int tag_buf_pos; TYPE_5__ blk; TYPE_4__ btx; TYPE_3__ start_tag; TYPE_2__ brx; void* blk_xfer_limit; } ;
struct i2c_msg {int len; int flags; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int I2C_M_RD ; 
 void* QUP_READ_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct qup_i2c_dev*,struct i2c_msg*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct qup_i2c_dev*,struct i2c_msg*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qup_i2c_dev *qup, struct i2c_msg *msg)
{
	int ret = 0, limit = QUP_READ_LIMIT;
	u32 len = 0, blocks, rem;
	u32 i = 0, tlen, tx_len = 0;
	u8 *tags;

	qup->blk_xfer_limit = QUP_READ_LIMIT;
	FUNC0(qup, msg);

	blocks = qup->blk.count;
	rem = msg->len - (blocks - 1) * limit;

	if (msg->flags & I2C_M_RD) {
		while (qup->blk.pos < blocks) {
			tlen = (i == (blocks - 1)) ? rem : limit;
			tags = &qup->start_tag.start[qup->tag_buf_pos + len];
			len += FUNC1(tags, qup, msg);
			qup->blk.data_len -= tlen;

			/* scratch buf to read the start and len tags */
			ret = FUNC2(&qup->brx.sg[qup->brx.sg_cnt++],
					     &qup->brx.tag.start[0],
					     2, qup, DMA_FROM_DEVICE);

			if (ret)
				return ret;

			ret = FUNC2(&qup->brx.sg[qup->brx.sg_cnt++],
					     &msg->buf[limit * i],
					     tlen, qup,
					     DMA_FROM_DEVICE);
			if (ret)
				return ret;

			i++;
			qup->blk.pos = i;
		}
		ret = FUNC2(&qup->btx.sg[qup->btx.sg_cnt++],
				     &qup->start_tag.start[qup->tag_buf_pos],
				     len, qup, DMA_TO_DEVICE);
		if (ret)
			return ret;

		qup->tag_buf_pos += len;
	} else {
		while (qup->blk.pos < blocks) {
			tlen = (i == (blocks - 1)) ? rem : limit;
			tags = &qup->start_tag.start[qup->tag_buf_pos + tx_len];
			len = FUNC1(tags, qup, msg);
			qup->blk.data_len -= tlen;

			ret = FUNC2(&qup->btx.sg[qup->btx.sg_cnt++],
					     tags, len,
					     qup, DMA_TO_DEVICE);
			if (ret)
				return ret;

			tx_len += len;
			ret = FUNC2(&qup->btx.sg[qup->btx.sg_cnt++],
					     &msg->buf[limit * i],
					     tlen, qup, DMA_TO_DEVICE);
			if (ret)
				return ret;
			i++;
			qup->blk.pos = i;
		}

		qup->tag_buf_pos += tx_len;
	}

	return 0;
}