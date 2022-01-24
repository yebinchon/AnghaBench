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
struct sock {scalar_t__ sk_protocol; scalar_t__ sk_family; int /*<<< orphan*/  sk_backlog_rcv; } ;
struct chtls_listen {struct sock* sk; struct chtls_dev* cdev; } ;
struct chtls_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  inet_rcv_saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHTLS_LISTEN_START ; 
 int EADDRNOTAVAIL ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PF_INET ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 struct chtls_listen* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listen_backlog_rcv ; 
 int /*<<< orphan*/  listen_notify_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  notify_mutex ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct chtls_listen*) ; 

__attribute__((used)) static int FUNC6(struct chtls_dev *cdev, struct sock *sk)
{
	struct chtls_listen *clisten;
	int err;

	if (sk->sk_protocol != IPPROTO_TCP)
		return -EPROTONOSUPPORT;

	if (sk->sk_family == PF_INET &&
	    FUNC0(FUNC1(sk)->inet_rcv_saddr))
		return -EADDRNOTAVAIL;

	sk->sk_backlog_rcv = listen_backlog_rcv;
	clisten = FUNC2(sizeof(*clisten), GFP_KERNEL);
	if (!clisten)
		return -ENOMEM;
	clisten->cdev = cdev;
	clisten->sk = sk;
	FUNC3(&notify_mutex);
	err = FUNC5(&listen_notify_list,
				      CHTLS_LISTEN_START, clisten);
	FUNC4(&notify_mutex);
	return err;
}