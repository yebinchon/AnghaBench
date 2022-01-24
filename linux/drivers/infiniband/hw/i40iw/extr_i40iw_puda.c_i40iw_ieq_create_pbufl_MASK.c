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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct list_head {int dummy; } ;
struct i40iw_puda_buf {scalar_t__ datalen; scalar_t__ seqnum; int /*<<< orphan*/  list; } ;
struct i40iw_pfpdu {int /*<<< orphan*/  bad_seq_num; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int I40IW_ERR_SEQ_NUM ; 
 int I40IW_ERR_list_empty ; 
 struct i40iw_puda_buf* FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static enum i40iw_status_code FUNC2(
						     struct i40iw_pfpdu *pfpdu,
						     struct list_head *rxlist,
						     struct list_head *pbufl,
						     struct i40iw_puda_buf *buf,
						     u16 fpdu_len)
{
	enum i40iw_status_code status = 0;
	struct i40iw_puda_buf *nextbuf;
	u32	nextseqnum;
	u16 plen = fpdu_len - buf->datalen;
	bool done = false;

	nextseqnum = buf->seqnum + buf->datalen;
	do {
		nextbuf = FUNC0(rxlist);
		if (!nextbuf) {
			status = I40IW_ERR_list_empty;
			break;
		}
		FUNC1(&nextbuf->list, pbufl);
		if (nextbuf->seqnum != nextseqnum) {
			pfpdu->bad_seq_num++;
			status = I40IW_ERR_SEQ_NUM;
			break;
		}
		if (nextbuf->datalen >= plen) {
			done = true;
		} else {
			plen -= nextbuf->datalen;
			nextseqnum = nextbuf->seqnum + nextbuf->datalen;
		}

	} while (!done);

	return status;
}