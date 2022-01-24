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
struct sock {scalar_t__ sk_protocol; } ;
struct chtls_listen {struct sock* sk; struct chtls_dev* cdev; } ;
struct chtls_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHTLS_LISTEN_STOP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPPROTO_TCP ; 
 struct chtls_listen* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listen_notify_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  notify_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct chtls_listen*) ; 

__attribute__((used)) static void FUNC4(struct chtls_dev *cdev, struct sock *sk)
{
	struct chtls_listen *clisten;

	if (sk->sk_protocol != IPPROTO_TCP)
		return;

	clisten = FUNC0(sizeof(*clisten), GFP_KERNEL);
	if (!clisten)
		return;
	clisten->cdev = cdev;
	clisten->sk = sk;
	FUNC1(&notify_mutex);
	FUNC3(&listen_notify_list,
				CHTLS_LISTEN_STOP, clisten);
	FUNC2(&notify_mutex);
}