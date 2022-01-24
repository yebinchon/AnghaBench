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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct list_head {int dummy; } ;
struct i40iw_puda_rsrc {int dummy; } ;
struct TYPE_2__ {scalar_t__ va; } ;
struct i40iw_puda_buf {scalar_t__ seqnum; scalar_t__ hdrlen; scalar_t__ datalen; int /*<<< orphan*/  list; TYPE_1__ mem; int /*<<< orphan*/ * data; scalar_t__ totallen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40iw_puda_buf*,struct i40iw_puda_buf*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_puda_buf*,struct i40iw_puda_buf*) ; 
 struct i40iw_puda_buf* FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_puda_rsrc*,struct i40iw_puda_buf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static void  FUNC5(struct i40iw_puda_rsrc *ieq,
				   struct list_head *rxlist,
				   struct list_head *pbufl,
				   struct i40iw_puda_buf *txbuf,
				   u16 fpdu_len)
{
	struct i40iw_puda_buf *buf;
	u32 nextseqnum;
	u16 txoffset, bufoffset;

	buf = FUNC2(pbufl);
	if (!buf)
		return;
	nextseqnum = buf->seqnum + fpdu_len;
	txbuf->totallen = buf->hdrlen + fpdu_len;
	txbuf->data = (u8 *)txbuf->mem.va + buf->hdrlen;
	FUNC1(buf, txbuf);

	txoffset = buf->hdrlen;
	bufoffset = (u16)(buf->data - (u8 *)buf->mem.va);

	do {
		if (buf->datalen >= fpdu_len) {
			/* copied full fpdu */
			FUNC0(buf, txbuf, bufoffset, txoffset, fpdu_len);
			buf->datalen -= fpdu_len;
			buf->data += fpdu_len;
			buf->seqnum = nextseqnum;
			break;
		}
		/* copy partial fpdu */
		FUNC0(buf, txbuf, bufoffset, txoffset, buf->datalen);
		txoffset += buf->datalen;
		fpdu_len -= buf->datalen;
		FUNC3(ieq, buf);
		buf = FUNC2(pbufl);
		if (!buf)
			return;
		bufoffset = (u16)(buf->data - (u8 *)buf->mem.va);
	} while (1);

	/* last buffer on the list*/
	if (buf->datalen)
		FUNC4(&buf->list, rxlist);
	else
		FUNC3(ieq, buf);
}