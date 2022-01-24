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
struct sock {int dummy; } ;
struct listen_info {unsigned int stid; struct listen_info* next; struct sock* sk; } ;
struct chtls_dev {int /*<<< orphan*/  listen_lock; struct listen_info** listen_hash_tab; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct listen_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct listen_info *FUNC4(struct chtls_dev *cdev,
					   struct sock *sk,
					   unsigned int stid)
{
	struct listen_info *p = FUNC0(sizeof(*p), GFP_KERNEL);

	if (p) {
		int key = FUNC1(sk);

		p->sk = sk;
		p->stid = stid;
		FUNC2(&cdev->listen_lock);
		p->next = cdev->listen_hash_tab[key];
		cdev->listen_hash_tab[key] = p;
		FUNC3(&cdev->listen_lock);
	}
	return p;
}