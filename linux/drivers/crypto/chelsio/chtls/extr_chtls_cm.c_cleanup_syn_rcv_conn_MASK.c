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
struct request_sock {int dummy; } ;
struct chtls_sock {struct request_sock* passive_reap_next; TYPE_1__* listen_ctx; int /*<<< orphan*/  synq; } ;
struct TYPE_4__ {int /*<<< orphan*/  icsk_accept_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  synq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request_sock*) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 struct chtls_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct request_sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *child, struct sock *parent)
{
	struct request_sock *req;
	struct chtls_sock *csk;

	csk = FUNC3(child);
	req = csk->passive_reap_next;

	FUNC4(&FUNC2(parent)->icsk_accept_queue, req);
	FUNC0((struct sk_buff *)&csk->synq, &csk->listen_ctx->synq);
	FUNC1(req);
	csk->passive_reap_next = NULL;
}