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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct listen_ctx {struct sock* lsk; } ;
struct cpl_pass_accept_req {int /*<<< orphan*/  tos_stid; } ;
struct chtls_dev {TYPE_1__* tids; } ;
struct TYPE_4__ {struct chtls_dev* cdev; } ;
struct TYPE_3__ {unsigned int ntids; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (struct cpl_pass_accept_req*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int RSS_HDR ; 
 int /*<<< orphan*/  chtls_pass_accept_request ; 
 struct cpl_pass_accept_req* FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct chtls_dev *cdev, struct sk_buff *skb)
{
	struct cpl_pass_accept_req *req = FUNC3(skb) + RSS_HDR;
	struct listen_ctx *ctx;
	unsigned int stid;
	unsigned int tid;
	struct sock *lsk;
	void *data;

	stid = FUNC2(FUNC5(req->tos_stid));
	tid = FUNC1(req);

	data = FUNC4(cdev->tids, stid);
	if (!data)
		return 1;

	ctx = (struct listen_ctx *)data;
	lsk = ctx->lsk;

	if (FUNC8(tid >= cdev->tids->ntids)) {
		FUNC6("passive open TID %u too large\n", tid);
		return 1;
	}

	FUNC0(skb)->cdev = cdev;
	FUNC7(chtls_pass_accept_request, lsk, skb);
	return 0;
}