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
struct tid_info {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_family; } ;
struct chtls_sock {unsigned int tid; int /*<<< orphan*/  port_id; int /*<<< orphan*/ * l2t_entry; int /*<<< orphan*/ * txdata_skb_cache; struct chtls_dev* cdev; } ;
struct chtls_dev {struct tid_info* tids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tid_info*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct chtls_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct chtls_sock *csk = FUNC3(sk);
	struct chtls_dev *cdev = csk->cdev;
	unsigned int tid = csk->tid;
	struct tid_info *tids;

	if (!cdev)
		return;

	tids = cdev->tids;
	FUNC2(csk->txdata_skb_cache);
	csk->txdata_skb_cache = NULL;

	if (csk->l2t_entry) {
		FUNC0(csk->l2t_entry);
		csk->l2t_entry = NULL;
	}

	FUNC1(tids, csk->port_id, tid, sk->sk_family);
	FUNC4(sk);
}