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
struct listen_info {int stid; struct sock* sk; struct listen_info* next; } ;
struct chtls_dev {int /*<<< orphan*/  listen_lock; struct listen_info** listen_hash_tab; } ;

/* Variables and functions */
 int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct chtls_dev *cdev,
			    struct sock *sk)
{
	struct listen_info *p;
	int stid = -1;
	int key;

	key = FUNC0(sk);

	FUNC1(&cdev->listen_lock);
	for (p = cdev->listen_hash_tab[key]; p; p = p->next)
		if (p->sk == sk) {
			stid = p->stid;
			break;
		}
	FUNC2(&cdev->listen_lock);
	return stid;
}