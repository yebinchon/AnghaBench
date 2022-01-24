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
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct chtls_dev {struct net_device** ports; } ;
struct TYPE_2__ {int /*<<< orphan*/  inet_rcv_saddr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  init_net ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct net_device* FUNC4 (struct net_device*) ; 

__attribute__((used)) static struct net_device *FUNC5(struct chtls_dev *cdev,
					    struct sock *sk)
{
	struct net_device *ndev = cdev->ports[0];

	if (FUNC3(!FUNC0(sk)->inet_rcv_saddr))
		return ndev;

	ndev = FUNC1(&init_net, FUNC0(sk)->inet_rcv_saddr);
	if (!ndev)
		return NULL;

	if (FUNC2(ndev))
		return FUNC4(ndev);
	return ndev;
}