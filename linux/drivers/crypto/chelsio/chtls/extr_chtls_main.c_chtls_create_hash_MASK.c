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
struct tls_device {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct chtls_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ TCP_LISTEN ; 
 int FUNC0 (struct chtls_dev*,struct sock*) ; 
 struct chtls_dev* FUNC1 (struct tls_device*) ; 

__attribute__((used)) static int FUNC2(struct tls_device *dev, struct sock *sk)
{
	struct chtls_dev *cdev = FUNC1(dev);

	if (sk->sk_state == TCP_LISTEN)
		return FUNC0(cdev, sk);
	return 0;
}