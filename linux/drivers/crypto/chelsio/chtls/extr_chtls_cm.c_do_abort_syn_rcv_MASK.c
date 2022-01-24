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
struct sock {scalar_t__ sk_state; TYPE_1__* sk_prot; } ;
struct TYPE_2__ {int /*<<< orphan*/  orphan_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_RST_ABORTED ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *child, struct sock *parent)
{
	/*
	 * If the server is still open we clean up the child connection,
	 * otherwise the server already did the clean up as it was purging
	 * its SYN queue and the skb was just sitting in its backlog.
	 */
	if (FUNC4(parent->sk_state == TCP_LISTEN)) {
		FUNC2(child, parent);
		/* Without the below call to sock_orphan,
		 * we leak the socket resource with syn_flood test
		 * as inet_csk_destroy_sock will not be called
		 * in tcp_done since SOCK_DEAD flag is not set.
		 * Kernel handles this differently where new socket is
		 * created only after 3 way handshake is done.
		 */
		FUNC6(child);
		FUNC5((child)->sk_prot->orphan_count);
		FUNC1(child);
		FUNC0(child);
	} else {
		if (FUNC3(child, CSK_RST_ABORTED)) {
			FUNC1(child);
			FUNC0(child);
		}
	}
}