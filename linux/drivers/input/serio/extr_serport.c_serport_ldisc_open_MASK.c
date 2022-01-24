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
struct tty_struct {int receive_room; int /*<<< orphan*/  flags; struct serport* disc_data; } ;
struct serport {int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; struct tty_struct* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct serport* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty)
{
	struct serport *serport;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	serport = FUNC2(sizeof(struct serport), GFP_KERNEL);
	if (!serport)
		return -ENOMEM;

	serport->tty = tty;
	FUNC4(&serport->lock);
	FUNC1(&serport->wait);

	tty->disc_data = serport;
	tty->receive_room = 256;
	FUNC3(TTY_DO_WRITE_WAKEUP, &tty->flags);

	return 0;
}