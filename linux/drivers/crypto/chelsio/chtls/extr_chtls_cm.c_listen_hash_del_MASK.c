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
struct listen_info {int stid; struct listen_info* next; struct sock* sk; } ;
struct chtls_dev {int /*<<< orphan*/  listen_lock; struct listen_info** listen_hash_tab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct listen_info*) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct chtls_dev *cdev,
			   struct sock *sk)
{
	struct listen_info *p, **prev;
	int stid = -1;
	int key;

	key = FUNC1(sk);
	prev = &cdev->listen_hash_tab[key];

	FUNC2(&cdev->listen_lock);
	for (p = *prev; p; prev = &p->next, p = p->next)
		if (p->sk == sk) {
			stid = p->stid;
			*prev = p->next;
			FUNC0(p);
			break;
		}
	FUNC3(&cdev->listen_lock);
	return stid;
}