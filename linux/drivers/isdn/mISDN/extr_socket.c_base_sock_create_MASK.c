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
struct socket {scalar_t__ type; int /*<<< orphan*/  state; int /*<<< orphan*/ * ops; } ;
struct sock {int sk_protocol; int /*<<< orphan*/  sk_state; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int ENOMEM ; 
 int EPERM ; 
 int ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MISDN_OPEN ; 
 int /*<<< orphan*/  PF_ISDN ; 
 scalar_t__ SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  base_sock_ops ; 
 int /*<<< orphan*/  base_sockets ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mISDN_proto ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sock*) ; 
 struct sock* FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net *net, struct socket *sock, int protocol, int kern)
{
	struct sock *sk;

	if (sock->type != SOCK_RAW)
		return -ESOCKTNOSUPPORT;
	if (!FUNC0(CAP_NET_RAW))
		return -EPERM;

	sk = FUNC2(net, PF_ISDN, GFP_KERNEL, &mISDN_proto, kern);
	if (!sk)
		return -ENOMEM;

	FUNC3(sock, sk);
	sock->ops = &base_sock_ops;
	sock->state = SS_UNCONNECTED;
	FUNC4(sk, SOCK_ZAPPED);
	sk->sk_protocol = protocol;
	sk->sk_state    = MISDN_OPEN;
	FUNC1(&base_sockets, sk);

	return 0;
}