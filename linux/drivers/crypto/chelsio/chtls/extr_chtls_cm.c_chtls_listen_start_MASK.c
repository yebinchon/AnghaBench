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
struct sock {scalar_t__ sk_family; } ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct listen_ctx {int /*<<< orphan*/  synq; int /*<<< orphan*/  state; struct chtls_dev* cdev; struct sock* lsk; } ;
struct chtls_dev {int /*<<< orphan*/  tids; TYPE_1__* lldi; } ;
struct adapter {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  inet_sport; int /*<<< orphan*/  inet_rcv_saddr; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rxq_ids; } ;

/* Variables and functions */
 int CXGB4_FULL_INIT_DONE ; 
 int EADDRINUSE ; 
 int EAGAIN ; 
 int EBADF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PF_INET ; 
 int /*<<< orphan*/  T4_LISTEN_START_PENDING ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct chtls_dev*,struct sock*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct listen_ctx*) ; 
 int FUNC3 (struct net_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_2__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct listen_ctx*) ; 
 struct listen_ctx* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct chtls_dev*,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct chtls_dev*,struct sock*) ; 
 scalar_t__ FUNC10 (struct chtls_dev*,struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 struct port_info* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 

int FUNC19(struct chtls_dev *cdev, struct sock *sk)
{
	struct net_device *ndev;
	struct listen_ctx *ctx;
	struct adapter *adap;
	struct port_info *pi;
	int stid;
	int ret;

	if (sk->sk_family != PF_INET)
		return -EAGAIN;

	FUNC14();
	ndev = FUNC1(cdev, sk);
	FUNC15();
	if (!ndev)
		return -EBADF;

	pi = FUNC13(ndev);
	adap = pi->adapter;
	if (!(adap->flags & CXGB4_FULL_INIT_DONE))
		return -EBADF;

	if (FUNC10(cdev, sk) >= 0)   /* already have it */
		return -EADDRINUSE;

	ctx = FUNC7(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC0(THIS_MODULE);
	ctx->lsk = sk;
	ctx->cdev = cdev;
	ctx->state = T4_LISTEN_START_PENDING;
	FUNC16(&ctx->synq);

	stid = FUNC2(cdev->tids, sk->sk_family, ctx);
	if (stid < 0)
		goto free_ctx;

	FUNC17(sk);
	if (!FUNC8(cdev, sk, stid))
		goto free_stid;

	ret = FUNC3(ndev, stid,
				  FUNC5(sk)->inet_rcv_saddr,
				  FUNC5(sk)->inet_sport, 0,
				  cdev->lldi->rxq_ids[0]);
	if (ret > 0)
		ret = FUNC12(ret);
	if (ret)
		goto del_hash;
	return 0;
del_hash:
	FUNC9(cdev, sk);
free_stid:
	FUNC4(cdev->tids, stid, sk->sk_family);
	FUNC18(sk);
free_ctx:
	FUNC6(ctx);
	FUNC11(THIS_MODULE);
	return -EBADF;
}