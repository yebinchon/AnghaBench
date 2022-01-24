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
struct notifier_block {int dummy; } ;
struct chtls_listen {int /*<<< orphan*/  sk; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
#define  CHTLS_LISTEN_START 129 
#define  CHTLS_LISTEN_STOP 128 
 int NOTIFY_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chtls_listen*) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *this,
				 unsigned long event, void *data)
{
	struct chtls_listen *clisten;
	int ret = NOTIFY_DONE;

	clisten = (struct chtls_listen *)data;

	switch (event) {
	case CHTLS_LISTEN_START:
		ret = FUNC0(clisten->cdev, clisten->sk);
		FUNC2(clisten);
		break;
	case CHTLS_LISTEN_STOP:
		FUNC1(clisten->cdev, clisten->sk);
		FUNC2(clisten);
		break;
	}
	return ret;
}