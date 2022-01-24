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
struct sk_buff {int dummy; } ;
struct listen_ctx {TYPE_1__* lsk; } ;
struct cpl_close_listsvr_rpl {scalar_t__ status; } ;
struct chtls_dev {int /*<<< orphan*/  tids; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_family; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_NONE ; 
 int CPL_RET_BUF_DONE ; 
 unsigned int FUNC0 (struct cpl_close_listsvr_rpl*) ; 
 int RSS_HDR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct cpl_close_listsvr_rpl* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct listen_ctx*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct chtls_dev *cdev, struct sk_buff *skb)
{
	struct cpl_close_listsvr_rpl *rpl = FUNC1(skb) + RSS_HDR;
	struct listen_ctx *listen_ctx;
	unsigned int stid;
	void *data;

	stid = FUNC0(rpl);
	data = FUNC4(cdev->tids, stid);
	listen_ctx = (struct listen_ctx *)data;

	if (rpl->status != CPL_ERR_NONE) {
		FUNC6("Unexpected CLOSE_LISTSRV_RPL status %u for STID %u\n",
			rpl->status, stid);
		return CPL_RET_BUF_DONE;
	}

	FUNC2(cdev->tids, stid, listen_ctx->lsk->sk_family);
	FUNC7(listen_ctx->lsk);
	FUNC3(listen_ctx);
	FUNC5(THIS_MODULE);

	return 0;
}