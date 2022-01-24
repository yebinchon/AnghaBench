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
struct tty_struct {struct ipoctal_channel* driver_data; int /*<<< orphan*/  index; int /*<<< orphan*/  dev; } ;
struct ipoctal_channel {int /*<<< orphan*/  tty_port; } ;
struct ipoctal {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct ipoctal* FUNC0 (struct ipoctal_channel*,int /*<<< orphan*/ ) ; 
 struct ipoctal_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct tty_struct*,struct file*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, struct file *file)
{
	struct ipoctal_channel *channel = FUNC1(tty->dev);
	struct ipoctal *ipoctal = FUNC0(channel, tty->index);
	int err;

	tty->driver_data = channel;

	if (!FUNC2(ipoctal->dev))
		return -EBUSY;

	err = FUNC4(&channel->tty_port, tty, file);
	if (err)
		FUNC3(ipoctal->dev);

	return err;
}